@interface PLTemporaryImageTable
- (BOOL)_writeBGRAThumbnailDataForImage:(id)a3 intoTable:(id)a4 atIndex:(unint64_t)a5;
- (BOOL)_writeCompressedThumbnailDataForImage:(id)a3 intoTable:(id)a4 atIndex:(unint64_t)a5;
- (PLTemporaryImageTable)initWithWithPath:(id)a3 imageFormat:(unsigned __int16)a4;
- (id)imageForItemAtIndex:(unint64_t)a3;
- (unint64_t)_imageTableIndexForItemIndex:(unint64_t)a3;
- (void)_cleanup;
- (void)_positional_setThumbnailsWithIdentifier:(id)a3 thumbnailIndex:(unint64_t)a4 image:(id)a5 assetUUID:(id)a6;
- (void)dealloc;
- (void)insertItemAtIndex:(unint64_t)a3;
- (void)removeItemAtIndex:(unint64_t)a3;
- (void)reset;
- (void)setImage:(id)a3 forItemAtIndex:(unint64_t)a4;
@end

@implementation PLTemporaryImageTable

- (void)dealloc
{
  imageTablePath = self->_imageTablePath;
  self->_imageTablePath = 0;

  [(PLTemporaryImageTable *)self _cleanup];
  v4.receiver = self;
  v4.super_class = PLTemporaryImageTable;
  [(PLTemporaryImageTable *)&v4 dealloc];
}

- (void)reset
{
  [(PLTemporaryImageTable *)self _cleanup];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  itemIndexToThumbEntryMapping = self->_itemIndexToThumbEntryMapping;
  self->_itemIndexToThumbEntryMapping = v3;

  v7 = [MEMORY[0x1E69BF260] formatWithID:self->_imageFormatID];
  v5 = [v7 createTableWithPath:self->_imageTablePath readOnly:0 format:v7];
  imageTable = self->_imageTable;
  self->_imageTable = v5;
}

- (void)_cleanup
{
  itemIndexToThumbEntryMapping = self->_itemIndexToThumbEntryMapping;
  self->_itemIndexToThumbEntryMapping = 0;

  imageTable = self->_imageTable;
  if (imageTable)
  {
    self->_imageTable = 0;

    v5 = [MEMORY[0x1E696AC08] defaultManager];
    [v5 removeItemAtPath:self->_imageTablePath error:0];
  }

  self->_nextTableEntryIndex = 0;
}

- (void)removeItemAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_itemIndexToThumbEntryMapping count]> a3)
  {
    v5 = [(PLTemporaryImageTable *)self _imageTableIndexForItemIndex:a3];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(PLThumbPersistenceManager *)self->_imageTable deleteEntryWithIdentifier:0 orIndex:v5 uuid:0];
    }

    itemIndexToThumbEntryMapping = self->_itemIndexToThumbEntryMapping;
    v7 = [MEMORY[0x1E695DFB0] null];
    [(NSMutableArray *)itemIndexToThumbEntryMapping replaceObjectAtIndex:a3 withObject:v7];
  }
}

- (void)insertItemAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_itemIndexToThumbEntryMapping count]> a3)
  {
    itemIndexToThumbEntryMapping = self->_itemIndexToThumbEntryMapping;
    v6 = [MEMORY[0x1E695DFB0] null];
    [(NSMutableArray *)itemIndexToThumbEntryMapping insertObject:v6 atIndex:a3];
  }
}

- (id)imageForItemAtIndex:(unint64_t)a3
{
  v4 = [(PLTemporaryImageTable *)self _imageTableIndexForItemIndex:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || (v5 = [(PLThumbPersistenceManager *)self->_imageTable createImageWithIdentifier:0 orIndex:v4]) == 0)
  {
    v7 = 0;
  }

  else
  {
    v6 = v5;
    v7 = DCIM_newPLImageWithCGImage();
    CGImageRelease(v6);
  }

  return v7;
}

- (unint64_t)_imageTableIndexForItemIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_itemIndexToThumbEntryMapping count]<= a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = [(NSMutableArray *)self->_itemIndexToThumbEntryMapping objectAtIndex:a3];
  v6 = [MEMORY[0x1E695DFB0] null];

  if (v5 == v6)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = [v5 unsignedIntegerValue];
  }

  return v7;
}

- (void)setImage:(id)a3 forItemAtIndex:(unint64_t)a4
{
  v13 = a3;
  while ([(NSMutableArray *)self->_itemIndexToThumbEntryMapping count]<= a4)
  {
    itemIndexToThumbEntryMapping = self->_itemIndexToThumbEntryMapping;
    v7 = [MEMORY[0x1E695DFB0] null];
    [(NSMutableArray *)itemIndexToThumbEntryMapping addObject:v7];
  }

  if ([(NSMutableArray *)self->_itemIndexToThumbEntryMapping count]<= a4)
  {
    v8 = 0;
LABEL_8:
    v11 = MEMORY[0x1E696AD98];
    ++self->_nextTableEntryIndex;
    v10 = [v11 numberWithUnsignedInteger:?];

    goto LABEL_9;
  }

  v8 = [(NSMutableArray *)self->_itemIndexToThumbEntryMapping objectAtIndex:a4];
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = [MEMORY[0x1E695DFB0] null];

  v10 = v8;
  if (v8 == v9)
  {
    goto LABEL_8;
  }

LABEL_9:
  v12 = [[PLImageContainer alloc] initWithPLImage:v13];
  -[PLTemporaryImageTable _positional_setThumbnailsWithIdentifier:thumbnailIndex:image:assetUUID:](self, "_positional_setThumbnailsWithIdentifier:thumbnailIndex:image:assetUUID:", 0, [v10 unsignedIntegerValue], v12, 0);
  [(NSMutableArray *)self->_itemIndexToThumbEntryMapping replaceObjectAtIndex:a4 withObject:v10];
}

- (PLTemporaryImageTable)initWithWithPath:(id)a3 imageFormat:(unsigned __int16)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = PLTemporaryImageTable;
  v7 = [(PLTemporaryImageTable *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_imageFormatID = a4;
    v9 = [v6 copy];
    imageTablePath = v8->_imageTablePath;
    v8->_imageTablePath = v9;

    [(PLTemporaryImageTable *)v8 reset];
  }

  return v8;
}

- (void)_positional_setThumbnailsWithIdentifier:(id)a3 thumbnailIndex:(unint64_t)a4 image:(id)a5 assetUUID:(id)a6
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = self->_imageTable;
  v10 = [(PLThumbPersistenceManager *)v9 isReadOnly];
  if (!v8 || (v10 & 1) != 0 || ![v8 CGImage])
  {
    goto LABEL_13;
  }

  v11 = [(PLThumbPersistenceManager *)v9 format];
  if ([v11 thumbnailKind] == 4)
  {
  }

  else
  {
    v12 = [(PLThumbPersistenceManager *)v9 format];
    v13 = [v12 thumbnailKind];

    if (v13 != 3)
    {
      if ([(PLTemporaryImageTable *)self _writeBGRAThumbnailDataForImage:v8 intoTable:v9 atIndex:a4])
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  if ([(PLTemporaryImageTable *)self _writeCompressedThumbnailDataForImage:v8 intoTable:v9 atIndex:a4])
  {
    goto LABEL_13;
  }

LABEL_10:
  v14 = PLThumbnailsGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15[0] = 67109120;
    v15[1] = [(PLThumbPersistenceManager *)v9 formatSideLen];
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to write temporary table image data in format with side len: %d", v15, 8u);
  }

LABEL_13:
}

- (BOOL)_writeBGRAThumbnailDataForImage:(id)a3 intoTable:(id)a4 atIndex:(unint64_t)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:{objc_msgSend(v8, "entryLength")}];
  v10 = *(MEMORY[0x1E695F058] + 16);
  v27[0] = *MEMORY[0x1E695F058];
  v27[1] = v10;
  v11 = [v8 format];
  v12 = [v11 thumbnailSpecification];

  v26 = v9;
  v13 = +[PLThumbnailUtilities performSWDownscaleTo5551OnImage:withSpecification:destinationData:imageRect:bytesPerRow:](PLThumbnailUtilities, "performSWDownscaleTo5551OnImage:withSpecification:destinationData:imageRect:bytesPerRow:", [v7 CGImage], v12, &v26, v27, 0);
  v14 = v26;

  if (v13 && ([v8 formatSideLen], v15 = MEMORY[0x1E69BF190], objc_msgSend(v7, "pixelSize"), objc_msgSend(v15, "centeredRectForSourceSize:destinationSize:"), v17 = v16, v19 = v18, v20 = objc_msgSend(v14, "mutableBytes"), v21 = v20 + objc_msgSend(v14, "length"), *(v21 - 20) = 0, *(v21 - 28) = 0, *(v21 - 12) = v19, *(v21 - 8) = v17, *(v21 - 4) = 0, (objc_msgSend(v8, "writeEntryData:toIndex:", v14, a5) & 1) != 0))
  {
    v22 = 1;
  }

  else
  {
    v23 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [v8 formatSideLen];
      *buf = 67109120;
      v29 = v24;
      _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Failed to write temporary table image data in format with side len: %d", buf, 8u);
    }

    v22 = 0;
  }

  return v22;
}

- (BOOL)_writeCompressedThumbnailDataForImage:(id)a3 intoTable:(id)a4 atIndex:(unint64_t)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [a3 CGImage];
  v9 = [v7 format];
  v10 = [MEMORY[0x1E696AFB0] UUID];
  v11 = [v10 UUIDString];
  v21 = 0;
  v12 = [PLTableThumbnailEncoder encodeThumbnailImage:v8 toFormat:v9 withUUID:v11 error:&v21];
  v13 = v21;

  if (!v12)
  {
    v14 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = [v7 formatSideLen];
      *buf = 67109378;
      *v23 = v16;
      *&v23[4] = 2112;
      *&v23[6] = v13;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to encode temporary table image data in format with side len: %d, error: %@", buf, 0x12u);
    }

    goto LABEL_9;
  }

  v14 = [v12 entryDataForEntryLength:{objc_msgSend(v7, "entryLength")}];
  if (([v7 writeEntryData:v14 toIndex:a5] & 1) == 0)
  {
    v17 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [v14 length];
      v19 = [v7 formatSideLen];
      *buf = 134218240;
      *v23 = v18;
      *&v23[8] = 1024;
      *&v23[10] = v19;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Failed to write encoded table image data of len: %ld in format with side len: %d", buf, 0x12u);
    }

LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  v15 = 1;
LABEL_10:

  return v15;
}

@end
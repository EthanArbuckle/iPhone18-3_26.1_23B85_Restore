@interface PLTemporaryImageTable
- (BOOL)_writeBGRAThumbnailDataForImage:(id)image intoTable:(id)table atIndex:(unint64_t)index;
- (BOOL)_writeCompressedThumbnailDataForImage:(id)image intoTable:(id)table atIndex:(unint64_t)index;
- (PLTemporaryImageTable)initWithWithPath:(id)path imageFormat:(unsigned __int16)format;
- (id)imageForItemAtIndex:(unint64_t)index;
- (unint64_t)_imageTableIndexForItemIndex:(unint64_t)index;
- (void)_cleanup;
- (void)_positional_setThumbnailsWithIdentifier:(id)identifier thumbnailIndex:(unint64_t)index image:(id)image assetUUID:(id)d;
- (void)dealloc;
- (void)insertItemAtIndex:(unint64_t)index;
- (void)removeItemAtIndex:(unint64_t)index;
- (void)reset;
- (void)setImage:(id)image forItemAtIndex:(unint64_t)index;
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

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager removeItemAtPath:self->_imageTablePath error:0];
  }

  self->_nextTableEntryIndex = 0;
}

- (void)removeItemAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_itemIndexToThumbEntryMapping count]> index)
  {
    v5 = [(PLTemporaryImageTable *)self _imageTableIndexForItemIndex:index];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(PLThumbPersistenceManager *)self->_imageTable deleteEntryWithIdentifier:0 orIndex:v5 uuid:0];
    }

    itemIndexToThumbEntryMapping = self->_itemIndexToThumbEntryMapping;
    null = [MEMORY[0x1E695DFB0] null];
    [(NSMutableArray *)itemIndexToThumbEntryMapping replaceObjectAtIndex:index withObject:null];
  }
}

- (void)insertItemAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_itemIndexToThumbEntryMapping count]> index)
  {
    itemIndexToThumbEntryMapping = self->_itemIndexToThumbEntryMapping;
    null = [MEMORY[0x1E695DFB0] null];
    [(NSMutableArray *)itemIndexToThumbEntryMapping insertObject:null atIndex:index];
  }
}

- (id)imageForItemAtIndex:(unint64_t)index
{
  v4 = [(PLTemporaryImageTable *)self _imageTableIndexForItemIndex:index];
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

- (unint64_t)_imageTableIndexForItemIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_itemIndexToThumbEntryMapping count]<= index)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = [(NSMutableArray *)self->_itemIndexToThumbEntryMapping objectAtIndex:index];
  null = [MEMORY[0x1E695DFB0] null];

  if (v5 == null)
  {
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
  }

  return unsignedIntegerValue;
}

- (void)setImage:(id)image forItemAtIndex:(unint64_t)index
{
  imageCopy = image;
  while ([(NSMutableArray *)self->_itemIndexToThumbEntryMapping count]<= index)
  {
    itemIndexToThumbEntryMapping = self->_itemIndexToThumbEntryMapping;
    null = [MEMORY[0x1E695DFB0] null];
    [(NSMutableArray *)itemIndexToThumbEntryMapping addObject:null];
  }

  if ([(NSMutableArray *)self->_itemIndexToThumbEntryMapping count]<= index)
  {
    v8 = 0;
LABEL_8:
    v11 = MEMORY[0x1E696AD98];
    ++self->_nextTableEntryIndex;
    v10 = [v11 numberWithUnsignedInteger:?];

    goto LABEL_9;
  }

  v8 = [(NSMutableArray *)self->_itemIndexToThumbEntryMapping objectAtIndex:index];
  if (!v8)
  {
    goto LABEL_8;
  }

  null2 = [MEMORY[0x1E695DFB0] null];

  v10 = v8;
  if (v8 == null2)
  {
    goto LABEL_8;
  }

LABEL_9:
  v12 = [[PLImageContainer alloc] initWithPLImage:imageCopy];
  -[PLTemporaryImageTable _positional_setThumbnailsWithIdentifier:thumbnailIndex:image:assetUUID:](self, "_positional_setThumbnailsWithIdentifier:thumbnailIndex:image:assetUUID:", 0, [v10 unsignedIntegerValue], v12, 0);
  [(NSMutableArray *)self->_itemIndexToThumbEntryMapping replaceObjectAtIndex:index withObject:v10];
}

- (PLTemporaryImageTable)initWithWithPath:(id)path imageFormat:(unsigned __int16)format
{
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = PLTemporaryImageTable;
  v7 = [(PLTemporaryImageTable *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_imageFormatID = format;
    v9 = [pathCopy copy];
    imageTablePath = v8->_imageTablePath;
    v8->_imageTablePath = v9;

    [(PLTemporaryImageTable *)v8 reset];
  }

  return v8;
}

- (void)_positional_setThumbnailsWithIdentifier:(id)identifier thumbnailIndex:(unint64_t)index image:(id)image assetUUID:(id)d
{
  v16 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  v9 = self->_imageTable;
  isReadOnly = [(PLThumbPersistenceManager *)v9 isReadOnly];
  if (!imageCopy || (isReadOnly & 1) != 0 || ![imageCopy CGImage])
  {
    goto LABEL_13;
  }

  format = [(PLThumbPersistenceManager *)v9 format];
  if ([format thumbnailKind] == 4)
  {
  }

  else
  {
    format2 = [(PLThumbPersistenceManager *)v9 format];
    thumbnailKind = [format2 thumbnailKind];

    if (thumbnailKind != 3)
    {
      if ([(PLTemporaryImageTable *)self _writeBGRAThumbnailDataForImage:imageCopy intoTable:v9 atIndex:index])
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  if ([(PLTemporaryImageTable *)self _writeCompressedThumbnailDataForImage:imageCopy intoTable:v9 atIndex:index])
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

- (BOOL)_writeBGRAThumbnailDataForImage:(id)image intoTable:(id)table atIndex:(unint64_t)index
{
  v30 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  tableCopy = table;
  v9 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:{objc_msgSend(tableCopy, "entryLength")}];
  v10 = *(MEMORY[0x1E695F058] + 16);
  v27[0] = *MEMORY[0x1E695F058];
  v27[1] = v10;
  format = [tableCopy format];
  thumbnailSpecification = [format thumbnailSpecification];

  v26 = v9;
  v13 = +[PLThumbnailUtilities performSWDownscaleTo5551OnImage:withSpecification:destinationData:imageRect:bytesPerRow:](PLThumbnailUtilities, "performSWDownscaleTo5551OnImage:withSpecification:destinationData:imageRect:bytesPerRow:", [imageCopy CGImage], thumbnailSpecification, &v26, v27, 0);
  v14 = v26;

  if (v13 && ([tableCopy formatSideLen], v15 = MEMORY[0x1E69BF190], objc_msgSend(imageCopy, "pixelSize"), objc_msgSend(v15, "centeredRectForSourceSize:destinationSize:"), v17 = v16, v19 = v18, v20 = objc_msgSend(v14, "mutableBytes"), v21 = v20 + objc_msgSend(v14, "length"), *(v21 - 20) = 0, *(v21 - 28) = 0, *(v21 - 12) = v19, *(v21 - 8) = v17, *(v21 - 4) = 0, (objc_msgSend(tableCopy, "writeEntryData:toIndex:", v14, index) & 1) != 0))
  {
    v22 = 1;
  }

  else
  {
    v23 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      formatSideLen = [tableCopy formatSideLen];
      *buf = 67109120;
      v29 = formatSideLen;
      _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Failed to write temporary table image data in format with side len: %d", buf, 8u);
    }

    v22 = 0;
  }

  return v22;
}

- (BOOL)_writeCompressedThumbnailDataForImage:(id)image intoTable:(id)table atIndex:(unint64_t)index
{
  v24 = *MEMORY[0x1E69E9840];
  tableCopy = table;
  cGImage = [image CGImage];
  format = [tableCopy format];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v21 = 0;
  v12 = [PLTableThumbnailEncoder encodeThumbnailImage:cGImage toFormat:format withUUID:uUIDString error:&v21];
  v13 = v21;

  if (!v12)
  {
    v14 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      formatSideLen = [tableCopy formatSideLen];
      *buf = 67109378;
      *v23 = formatSideLen;
      *&v23[4] = 2112;
      *&v23[6] = v13;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to encode temporary table image data in format with side len: %d, error: %@", buf, 0x12u);
    }

    goto LABEL_9;
  }

  v14 = [v12 entryDataForEntryLength:{objc_msgSend(tableCopy, "entryLength")}];
  if (([tableCopy writeEntryData:v14 toIndex:index] & 1) == 0)
  {
    v17 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [v14 length];
      formatSideLen2 = [tableCopy formatSideLen];
      *buf = 134218240;
      *v23 = v18;
      *&v23[8] = 1024;
      *&v23[10] = formatSideLen2;
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
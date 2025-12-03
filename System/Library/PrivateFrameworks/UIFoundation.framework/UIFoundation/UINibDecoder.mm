@interface UINibDecoder
+ (id)unarchiveObjectWithData:(id)data;
+ (id)unarchiveObjectWithFile:(id)file;
- (BOOL)containsValueForKey:(id)key;
- (BOOL)decodeArrayOfCGFloats:(double *)floats count:(int64_t)count forKey:(id)key;
- (BOOL)decodeArrayOfDoubles:(double *)doubles count:(int64_t)count forKey:(id)key;
- (BOOL)decodeArrayOfFloats:(float *)floats count:(int64_t)count forKey:(id)key;
- (BOOL)decodeBoolForKey:(id)key;
- (BOOL)validateAndIndexClasses:(const void *)classes length:(unint64_t)length;
- (BOOL)validateAndIndexData:(id)data error:(id *)error;
- (BOOL)validateAndIndexKeys:(const void *)keys length:(unint64_t)length;
- (BOOL)validateAndIndexObjects:(const void *)objects length:(unint64_t)length;
- (BOOL)validateAndIndexValues:(const void *)values length:(unint64_t)length;
- (CGAffineTransform)decodeCGAffineTransformForKey:(SEL)key;
- (CGPoint)decodeCGPointForKey:(id)key;
- (CGRect)decodeCGRectForKey:(id)key;
- (CGSize)decodeCGSizeForKey:(id)key;
- (UIEdgeInsets)decodeUIEdgeInsetsForKey:(id)key;
- (const)decodeBytesForKey:(id)key returnedLength:(unint64_t *)length;
- (double)decodeDoubleForKey:(id)key;
- (float)decodeFloatForKey:(id)key;
- (id)decodeObject;
- (id)decodeObjectForKey:(id)key;
- (id)initForReadingWithData:(id)data error:(id *)error;
- (id)nextGenericKey;
- (int)decodeInt32ForKey:(id)key;
- (int)decodeIntForKey:(id)key;
- (int64_t)decodeInt64ForKey:(id)key;
- (int64_t)decodeIntegerForKey:(id)key;
- (int64_t)versionForClassName:(id)name;
- (void)dealloc;
- (void)decodeArrayOfObjCType:(const char *)type count:(unint64_t)count at:(void *)at;
- (void)decodeValueOfObjCType:(const char *)type at:(void *)at;
- (void)decodeValuesOfObjCTypes:(const char *)types;
- (void)finishDecoding;
- (void)replaceObject:(id)object withObject:(id)withObject;
@end

@implementation UINibDecoder

- (void)finishDecoding
{
  p_header = &self->header;
  if (self->header.objects.count)
  {
    v4 = 0;
    do
    {

      count = p_header->objects.count;
    }

    while (v4 < count);
    v6 = 8 * count;
  }

  else
  {
    v6 = 0;
  }

  bzero(self->objectsByObjectID, v6);
  self->recursiveState.nextGenericKey = 0;
  *&self->recursiveState.nextValueSearchIndex = 0;
  self->recursiveState.objectID = 0;
}

- (void)dealloc
{
  v3 = 0;
  p_keyIDCache = &self->keyIDCache;
  do
  {
  }

  while (v3 != 64);
  if (self->objectsByObjectID && self->header.objects.count)
  {
    v5 = 0;
    do
    {
    }

    while (v5 < self->header.objects.count);
  }

  UIFreeMissingClasses(&self->missingClasses, self->header.classes.count);
  free(self->classes);
  free(self->objects);
  free(self->values);
  free(self->valueData);
  free(self->objectsByObjectID);
  free(self->shortObjectClassIDs);
  free(self->longObjectClassIDs);
  free(self->valueTypes);
  free(self->keyMasks);

  v6.receiver = self;
  v6.super_class = UINibDecoder;
  [(UINibDecoder *)&v6 dealloc];
}

- (id)initForReadingWithData:(id)data error:(id *)error
{
  v9.receiver = self;
  v9.super_class = UINibDecoder;
  v10 = 0;
  v6 = [(UINibDecoder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (data && [(UINibDecoder *)v6 validateAndIndexData:data error:&v10])
    {
      v7->recursiveState.objectID = 0;
      v7->valueCache.previousKey = [(UINibStringIDTable *)v7->keyIDTable count]+ 1;
      if (![(UINibStringIDTable *)v7->keyIDTable lookupKey:@"NSInlinedValue" identifier:&v7->inlinedValueKey])
      {
        v7->inlinedValueKey = [(UINibStringIDTable *)v7->keyIDTable count]+ 1;
      }

      v7->arrayClass = objc_opt_class();
      v7->setClass = objc_opt_class();
      v7->dictionaryClass = objc_opt_class();
    }

    else
    {

      v7 = 0;
    }
  }

  if (error)
  {
    *error = v10;
  }

  return v7;
}

- (BOOL)validateAndIndexData:(id)data error:(id *)error
{
  bytes = [data bytes];
  v8 = [data length];
  if (v8 >= 0xA && (v9 = *bytes, *&self->header.type[8] = *(bytes + 8), *self->header.type = v9, v8 - 14 <= 0xFFFFFFFFFFFFFFFBLL) && (self->header.formatVersion = *(bytes + 10), v8 >= 0x12) && (self->header.coderVersion = *(bytes + 14), v8 - 22 <= 0xFFFFFFFFFFFFFFFBLL) && (self->header.objects.count = *(bytes + 18), v8 >= 0x1A) && (self->header.objects.offset = *(bytes + 22), v8 - 30 <= 0xFFFFFFFFFFFFFFFBLL) && (self->header.keys.count = *(bytes + 26), v8 >= 0x22) && (self->header.keys.offset = *(bytes + 30), v8 - 38 <= 0xFFFFFFFFFFFFFFFBLL) && (self->header.values.count = *(bytes + 34), v8 >= 0x2A) && (self->header.values.offset = *(bytes + 38), v8 - 46 <= 0xFFFFFFFFFFFFFFFBLL) && (self->header.classes.count = *(bytes + 42), v8 >= 0x32) && ((self->header.classes.offset = *(bytes + 46), *self->header.type == *"NIBArchive") ? (v10 = *&self->header.type[8] == *"ve") : (v10 = 0), v10))
  {
    if (self->header.formatVersion <= 1)
    {
      v15 = v8;
      if ([(UINibDecoder *)self validateAndIndexClasses:bytes length:v8])
      {
        if ([(UINibDecoder *)self validateAndIndexKeys:bytes length:v15])
        {
          if ([(UINibDecoder *)self validateAndIndexValues:bytes length:v15])
          {
            v12 = [(UINibDecoder *)self validateAndIndexObjects:bytes length:v15];
            v11 = @"The object data is invalid.";
            if (v12)
            {
              v11 = 0;
            }
          }

          else
          {
            LOBYTE(v12) = 0;
            v11 = @"The value data is invalid.";
          }
        }

        else
        {
          LOBYTE(v12) = 0;
          v11 = @"The key data is invalid.";
        }
      }

      else
      {
        LOBYTE(v12) = 0;
        v11 = @"The class data is invalid.";
      }
    }

    else
    {
      LOBYTE(v12) = 0;
      v11 = @"The NIB data is too new for this version of iOS.";
    }
  }

  else
  {
    v11 = 0;
    LOBYTE(v12) = 0;
  }

  if (error && !v12)
  {
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = @"The NIB data is invalid.";
    }

    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:0 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", v13, *MEMORY[0x1E696A578])}];
  }

  return v12;
}

- (BOOL)validateAndIndexClasses:(const void *)classes length:(unint64_t)length
{
  p_header = &self->header;
  if (self->header.classes.offset > length)
  {
    v6 = 0;
    goto LABEL_56;
  }

  offset = self->header.classes.offset;
  count = self->header.classes.count;
  if (!count)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v36 = 0;
  do
  {
    v37 = 0;
    if (v10 == v11)
    {
      if (v10 + 128 >= count)
      {
        v11 = count;
      }

      else
      {
        v11 = v10 + 128;
      }

      self->classes = malloc_type_realloc(self->classes, 8 * v11, 0x80040B8603338uLL);
      self->missingClasses = malloc_type_realloc(self->missingClasses, 8 * v11, 0x80040B8603338uLL);
    }

    if (!UIReadNibArchiveVInt32(classes, length, &offset, &v37 + 1) || !UIReadNibArchiveVInt32(classes, length, &offset, &v37) || length < offset || (v13 = 4 * v37, length - offset < v13) || (v14 = v13 + offset, v15 = length - (v13 + offset), length < v14) || v15 < HIDWORD(v37) || (offset = v14 + HIDWORD(v37), !HIDWORD(v37)) || (v16 = classes + v14, v17 = (HIDWORD(v37) - 1), *(classes + v14 + v17)))
    {
      v6 = v36;
      goto LABEL_56;
    }

    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v16 length:v17 encoding:4];
    if (v18)
    {
      self->classes[v10] = [MEMORY[0x1E696ACD0] classForClassName:v18];
      classes = self->classes;
      v20 = classes[v10];
      if (!v20)
      {
        v20 = objc_lookUpClass(v16);
        classes = self->classes;
      }

      classes[v10] = v20;
      v21 = self->classes[v10];
      v22 = v21 == 0;
      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = v18;
      }

      v12 |= v22;
      self->missingClasses[v10] = v23;
      v36 = v10 + 1;
    }

    count = p_header->classes.count;
    if (!v18)
    {
      break;
    }

    ++v10;
  }

  while (v10 < count);
  v6 = v36;
  if (!v18)
  {
LABEL_56:
    UIFreeMissingClasses(&self->missingClasses, v6);
    return 0;
  }

  if ((v12 & 1) == 0)
  {
    return 1;
  }

  v24 = p_header->classes.offset;
  result = v24 <= length;
  if (v24 > length)
  {
    v26 = 0;
  }

  else
  {
    v26 = p_header->classes.offset;
  }

  offset = v26;
  if (count && v24 <= length)
  {
    v27 = 0;
    while (1)
    {
      v37 = 0;
      if (!UIReadNibArchiveVInt32(classes, length, &offset, &v37 + 1))
      {
        return 0;
      }

      v28 = UIReadNibArchiveVInt32(classes, length, &offset, &v37);
      v29 = v37;
      v30 = offset;
      v31 = 0;
      if (v37)
      {
        break;
      }

LABEL_48:
      if ((v28 & 1) == 0)
      {
        return 0;
      }

      if (length < v30)
      {
        return 0;
      }

      v35 = 4 * (v29 - v31);
      if (length - v30 < v35 || length < v30 + v35 || length - (v30 + v35) < HIDWORD(v37))
      {
        return 0;
      }

      offset = v30 + v35 + HIDWORD(v37);
      ++v27;
      result = 1;
      if (v27 >= p_header->classes.count)
      {
        return result;
      }
    }

    while (2)
    {
      v32 = self->classes;
      if (v32[v27])
      {
        goto LABEL_48;
      }

      if (v28)
      {
        v28 = 0;
        if (length < v30 || length - v30 < 4)
        {
          goto LABEL_46;
        }

        v33 = *(classes + v30);
        v30 += 4;
        if (v33 < p_header->classes.count)
        {
          v34 = v32[v33];
          if (v34)
          {
            v32[v27] = v34;

            self->missingClasses[v27] = 0;
          }

          v28 = 1;
LABEL_46:
          if (v29 == ++v31)
          {
            v31 = v29;
            goto LABEL_48;
          }

          continue;
        }
      }

      break;
    }

    v28 = 0;
    goto LABEL_46;
  }

  return result;
}

- (BOOL)validateAndIndexObjects:(const void *)objects length:(unint64_t)length
{
  if (!self->keyIDTable || !self->values || !self->classes)
  {
    [UINibDecoder validateAndIndexObjects:length:];
  }

  if (self->header.objects.offset > length)
  {
    return 0;
  }

  offset = self->header.objects.offset;
  count = self->header.objects.count;
  if (count)
  {
    objectsCopy2 = objects;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      if (v10 == v9)
      {
        if (v9 + 128 >= count)
        {
          v11 = count;
        }

        else
        {
          v11 = v9 + 128;
        }

        self->objects = malloc_type_realloc(self->objects, 8 * v11, 0x100004000313F17uLL);
        if (self->header.classes.count > 0xFF)
        {
          v14 = v11;
          v12 = 152;
          longObjectClassIDs = self->longObjectClassIDs;
          v15 = 4 * v11;
          v16 = 0x100004052888210;
        }

        else
        {
          v12 = 160;
          longObjectClassIDs = self->shortObjectClassIDs;
          v14 = v11;
          v15 = v11;
          v16 = 0x100004077774924;
        }

        *(&self->super.super.isa + v12) = malloc_type_realloc(longObjectClassIDs, v15, v16);
        self->keyMasks = malloc_type_realloc(self->keyMasks, 4 * v11, 0x100004052888210uLL);
        v10 = v14;
        objectsCopy2 = objects;
      }

      v31 = 0;
      if (!UIReadNibArchiveVInt32(objectsCopy2, length, &offset, &v31))
      {
        return 0;
      }

      if (!UIReadNibArchiveVInt32(objectsCopy2, length, &offset, &self->objects[v9]))
      {
        return 0;
      }

      if (!UIReadNibArchiveVInt32(objectsCopy2, length, &offset, &self->objects[v9].var1))
      {
        return 0;
      }

      if (v31 >= self->header.classes.count)
      {
        return 0;
      }

      objects = self->objects;
      if (objects[v9].var1 + objects[v9].var0 > self->header.values.count)
      {
        return 0;
      }

      shortObjectClassIDs = self->shortObjectClassIDs;
      if (shortObjectClassIDs)
      {
        shortObjectClassIDs[v9] = v31;
        objects = self->objects;
      }

      else
      {
        self->longObjectClassIDs[v9] = v31;
      }

      v19 = &objects[v9];
      var1 = v19->var1;
      if (var1)
      {
        var0 = v19->var0;
        keyMasks = self->keyMasks;
        values = self->values;
        v24 = keyMasks[v9];
        do
        {
          v24 |= 1 << values[var0].var0;
          keyMasks[v9] = v24;
          ++var0;
          --var1;
        }

        while (var1);
      }

      ++v9;
      count = self->header.objects.count;
      if (v9 >= count)
      {
        if (!self->header.objects.count)
        {
          goto LABEL_31;
        }

        self->objectsByObjectID = malloc_type_calloc(count, 8uLL, 0x80040B8603338uLL);
        v25 = self->header.objects.count;
        goto LABEL_32;
      }
    }
  }

  v10 = 0;
LABEL_31:
  v25 = 0;
LABEL_32:
  if (v10 > v25)
  {
    self->objects = malloc_type_realloc(self->objects, 8 * v25, 0x100004000313F17uLL);
    v26 = 160;
    v27 = self->shortObjectClassIDs;
    if (v27)
    {
      v28 = self->header.objects.count;
      v29 = 0x100004077774924;
    }

    else
    {
      v26 = 152;
      v27 = self->longObjectClassIDs;
      v28 = 4 * self->header.objects.count;
      v29 = 0x100004052888210;
    }

    *(&self->super.super.isa + v26) = malloc_type_realloc(v27, v28, v29);
    self->keyMasks = malloc_type_realloc(self->keyMasks, 4 * self->header.objects.count, 0x100004052888210uLL);
  }

  return 1;
}

- (BOOL)validateAndIndexValues:(const void *)values length:(unint64_t)length
{
  if (!self->keyIDTable)
  {
    [UINibDecoder validateAndIndexValues:length:];
  }

  lengthCopy2 = length;
  p_header = &self->header;
  if (self->header.values.offset > length)
  {
    return 0;
  }

  offset = self->header.values.offset;
  count = self->header.values.count;
  if (!count)
  {
    return 1;
  }

  valuesCopy2 = values;
  v10 = 0;
  v44 = 0;
  v11 = 0;
  v41 = &self->header;
  while (1)
  {
    if (v44 == v10)
    {
      if (v10 + 128 >= count)
      {
        v12 = count;
      }

      else
      {
        v12 = v10 + 128;
      }

      self->values = malloc_type_realloc(self->values, 8 * v12, 0x100004000313F17uLL);
      v44 = v12;
      self->valueTypes = malloc_type_realloc(self->valueTypes, v12, 0x100004077774924uLL);
    }

    if (UIReadNibArchiveVInt32(valuesCopy2, lengthCopy2, &offset, &self->values[v10]))
    {
      v13 = offset;
      if (offset >= lengthCopy2)
      {
        v14 = 0;
      }

      else
      {
        self->valueTypes[v10] = valuesCopy2[offset];
        offset = v13 + 1;
        v14 = 1;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = UIFixedByteLengthForType(self->valueTypes[v10]);
    result = 0;
    if (!v14 || v15 == -2)
    {
      break;
    }

    v45 = v10;
    v46 = 0;
    if (v15 == -1)
    {
      if (!UIReadNibArchiveVInt32(valuesCopy2, lengthCopy2, &offset, &v46))
      {
        return 0;
      }

      v16 = v46;
      v17 = v46;
    }

    else
    {
      v16 = 0;
      v17 = v15;
    }

    v18 = offset;
    if (lengthCopy2 < offset)
    {
      return 0;
    }

    v19 = v17;
    if (lengthCopy2 - offset < v17)
    {
      return 0;
    }

    values = self->values;
    offset += v17;
    values[v45].var1 = v11;
    if (v15 == -1)
    {
      v42 = v18;
      v21 = (2 * v16) & 0x7F00 | v16 & 0x7F;
      v22 = v21 | (4 * v16) & 0x7F0000 | (((v16 >> 21) & 0x7F) << 24);
      v23 = v21 | 0x8000;
      v24 = v21 | (((v16 >> 14) & 0x7F) << 16) | 0x800000;
      v25 = v16 | 0x80;
      valueData = self->valueData;
      if (v16 >= 0x80)
      {
        v25 = v23;
      }

      v27 = 1;
      if (v16 >= 0x80)
      {
        v27 = 2;
      }

      if (v16 < 0x4000)
      {
        v24 = v25;
      }

      v28 = 3;
      if (v16 < 0x4000)
      {
        v28 = v27;
      }

      if (v16 >= 0x200000)
      {
        v29 = v22 | 0x80000000;
      }

      else
      {
        v29 = v24;
      }

      if (v16 >= 0x200000)
      {
        v30 = 4;
      }

      else
      {
        v30 = v28;
      }

      while (1)
      {
        valueDataSize = self->valueDataSize;
        v32 = v29;
        v33 = v30;
        if (v16 >> 28)
        {
          v49 = v16 >> 28;
          v32 = v22;
          v33 = 5;
        }

        __src = v32;
        if (valueDataSize >= v11 && valueDataSize - v11 >= v33)
        {
          break;
        }

        self->valueDataSize = valueDataSize + 512;
        valueData = malloc_type_realloc(valueData, valueDataSize + 512, 0x65D7B618uLL);
        self->valueData = valueData;
      }

      memcpy(&valueData[v11], &__src, v33);
      v11 += v33;
      lengthCopy2 = length;
      p_header = v41;
      v18 = v42;
    }

    v35 = self->valueDataSize;
    v36 = v35 >= v11;
    v37 = v35 - v11;
    v38 = self->valueData;
    while (!v36 || v37 < v19)
    {
      self->valueDataSize = v35 + 512;
      v38 = malloc_type_realloc(v38, v35 + 512, 0x8CD36BEEuLL);
      self->valueData = v38;
      v35 = self->valueDataSize;
      v36 = v35 >= v11;
      v37 = v35 - v11;
    }

    valuesCopy2 = values;
    memcpy(&v38[v11], values + v18, v19);
    v11 += v19;
    v10 = v45 + 1;
    count = p_header->values.count;
    if (v45 + 1 >= count)
    {
      if (v44 > count)
      {
        self->values = malloc_type_realloc(self->values, 8 * count, 0x100004000313F17uLL);
        self->valueTypes = malloc_type_realloc(self->valueTypes, p_header->values.count, 0x100004077774924uLL);
      }

      return 1;
    }
  }

  return result;
}

- (BOOL)validateAndIndexKeys:(const void *)keys length:(unint64_t)length
{
  (MEMORY[0x1EEE9AC00])(self, a2, keys, length);
  v6 = v5;
  v8 = v7;
  v9 = v4;
  v27 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v10 = v4 + 88;
  v11 = *(v4 + 120);
  v12 = v11 <= v5;
  if (v11 <= v5)
  {
    v24 = *(v4 + 120);
  }

  v13 = *(v4 + 116);
  if (v13 <= 0x100)
  {
    v15 = v25;
    v14 = v26;
  }

  else
  {
    v14 = malloc_type_malloc(8 * v13, 0x80040B8603338uLL);
    v13 = *(v10 + 28);
    if (v13 < 0x101)
    {
      v15 = v25;
    }

    else
    {
      v15 = malloc_type_malloc(8 * v13, 0x100004000313F17uLL);
      LODWORD(v13) = *(v10 + 28);
    }
  }

  bzero(v14, 8 * v13);
  if (*(v10 + 28))
  {
    v16 = v11 > v6;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
LABEL_13:
    if (v12)
    {
      *(v9 + 208) = [[UINibStringIDTable alloc] initWithKeysTransferingOwnership:v14 count:*(v10 + 28)];
      v17 = 1;
      goto LABEL_25;
    }
  }

  else
  {
    v18 = 0;
    while (1)
    {
      v23 = 0;
      if (!UIReadNibArchiveVInt32(v8, v6, &v24, &v23))
      {
        break;
      }

      v19 = v24;
      if (v6 < v24 || v6 - v24 < v23)
      {
        break;
      }

      v24 += v23;
      v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v8 + v19 length:v23 encoding:4];
      *&v14[8 * v18] = v21;
      v12 = v21 != 0;
      *&v15[8 * v18] = v18;
      if (++v18 >= *(v10 + 28) || !v21)
      {
        goto LABEL_13;
      }
    }
  }

  v17 = 0;
LABEL_25:
  if (v14 != v26)
  {
    free(v14);
  }

  if (v15 != v25)
  {
    free(v15);
  }

  return v17;
}

+ (id)unarchiveObjectWithData:(id)data
{
  v3 = [[self alloc] initForReadingWithData:data error:0];
  v4 = [v3 decodeObjectForKey:@"object"];
  [v3 finishDecoding];

  return v4;
}

+ (id)unarchiveObjectWithFile:(id)file
{
  result = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:file];
  if (result)
  {

    return [self unarchiveObjectWithData:result];
  }

  return result;
}

- (id)nextGenericKey
{
  v2 = MEMORY[0x1E696AEC0];
  nextGenericKey = self->recursiveState.nextGenericKey;
  self->recursiveState.nextGenericKey = nextGenericKey + 1;
  return [v2 stringWithFormat:@"$%ld", nextGenericKey];
}

- (void)replaceObject:(id)object withObject:(id)withObject
{
  if (object != withObject)
  {
    objectsByObjectID = self->objectsByObjectID;
    objectID = self->recursiveState.objectID;
    if (objectsByObjectID[objectID] == object)
    {
      objectsByObjectID[objectID] = withObject;
      self->recursiveState.replaced = 1;
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"This coder only supports replacing the object currently being decoded."];
    }
  }
}

- (BOOL)containsValueForKey:(id)key
{
  v18 = 0;
  v4 = [(UINibStringIDTable *)self->keyIDTable lookupKey:key identifier:&v18];
  if (v4)
  {
    objectID_low = LODWORD(self->recursiveState.objectID);
    if ((self->keyMasks[objectID_low] >> v18))
    {
      v6 = &self->objects[objectID_low];
      var0 = v6->var0;
      var1 = v6->var1;
      nextValueSearchIndex = self->recursiveState.nextValueSearchIndex;
      if (nextValueSearchIndex >= var1)
      {
LABEL_7:
        if (!nextValueSearchIndex)
        {
LABEL_11:
          v14 = 0;
          if (nextValueSearchIndex + 1 < var1)
          {
            v15 = nextValueSearchIndex + 1;
          }

          else
          {
            v15 = 0;
          }

          self->recursiveState.nextValueSearchIndex = v15;
          goto LABEL_19;
        }

        v13 = 0;
        while (1)
        {
          v12 = var0;
          if (self->values[var0].var0 == v18)
          {
            break;
          }

          --v13;
          ++var0;
          if (-nextValueSearchIndex == v13)
          {
            goto LABEL_11;
          }
        }

        v16 = -v13;
      }

      else
      {
        v10 = -nextValueSearchIndex;
        v11 = nextValueSearchIndex + var0;
        while (1)
        {
          v12 = v11;
          if (self->values[v11].var0 == v18)
          {
            break;
          }

          --v10;
          ++v11;
          if (-var1 == v10)
          {
            goto LABEL_7;
          }
        }

        v16 = -v10;
      }

      self->recursiveState.nextValueSearchIndex = v16;
      v14 = &self->values[v12];
    }

    else
    {
      v14 = 0;
    }

LABEL_19:
    LOBYTE(v4) = v14 != 0;
  }

  return v4;
}

- (id)decodeObjectForKey:(id)key
{
  v17 = 0;
  if (![(UINibStringIDTable *)self->keyIDTable lookupKey:key identifier:&v17])
  {
    return 0;
  }

  objectID_low = LODWORD(self->recursiveState.objectID);
  if (((self->keyMasks[objectID_low] >> v17) & 1) == 0)
  {
    return 0;
  }

  v5 = &self->objects[objectID_low];
  var0 = v5->var0;
  var1 = v5->var1;
  nextValueSearchIndex = self->recursiveState.nextValueSearchIndex;
  if (nextValueSearchIndex < var1)
  {
    v9 = -nextValueSearchIndex;
    v10 = nextValueSearchIndex + var0;
    while (1)
    {
      v11 = v10;
      if (self->values[v10].var0 == v17)
      {
        break;
      }

      --v9;
      ++v10;
      if (-var1 == v9)
      {
        goto LABEL_7;
      }
    }

    v15 = -v9;
LABEL_17:
    self->recursiveState.nextValueSearchIndex = v15;
    values = self->values;
    if (values)
    {
      UINibDecoderDecodeObjectForValue(self, &values[v11], self->valueTypes[v11]);
      return result;
    }

    return 0;
  }

LABEL_7:
  if (nextValueSearchIndex)
  {
    v12 = 0;
    while (1)
    {
      v11 = var0;
      if (self->values[var0].var0 == v17)
      {
        break;
      }

      --v12;
      ++var0;
      if (-nextValueSearchIndex == v12)
      {
        goto LABEL_11;
      }
    }

    v15 = -v12;
    goto LABEL_17;
  }

LABEL_11:
  result = 0;
  if (nextValueSearchIndex + 1 < var1)
  {
    v14 = nextValueSearchIndex + 1;
  }

  else
  {
    v14 = 0;
  }

  self->recursiveState.nextValueSearchIndex = v14;
  return result;
}

- (const)decodeBytesForKey:(id)key returnedLength:(unint64_t *)length
{
  v23 = 0;
  v22 = 0;
  if (![(UINibStringIDTable *)self->keyIDTable lookupKey:key identifier:&v22])
  {
    goto LABEL_22;
  }

  objectID_low = LODWORD(self->recursiveState.objectID);
  if (((self->keyMasks[objectID_low] >> v22) & 1) == 0)
  {
    goto LABEL_22;
  }

  v7 = &self->objects[objectID_low];
  var0 = v7->var0;
  var1 = v7->var1;
  nextValueSearchIndex = self->recursiveState.nextValueSearchIndex;
  if (nextValueSearchIndex < var1)
  {
    v11 = -nextValueSearchIndex;
    v12 = nextValueSearchIndex + var0;
    while (1)
    {
      v13 = v12;
      if (self->values[v12].var0 == v22)
      {
        break;
      }

      --v11;
      ++v12;
      if (-var1 == v11)
      {
        goto LABEL_7;
      }
    }

    v17 = -v11;
    goto LABEL_18;
  }

LABEL_7:
  if (nextValueSearchIndex)
  {
    v14 = 0;
    while (1)
    {
      v13 = var0;
      if (self->values[var0].var0 == v22)
      {
        break;
      }

      --v14;
      ++var0;
      if (-nextValueSearchIndex == v14)
      {
        goto LABEL_11;
      }
    }

    v17 = -v14;
LABEL_18:
    self->recursiveState.nextValueSearchIndex = v17;
    values = self->values;
    if (values)
    {
      v19 = self->valueTypes[v13] == 8;
    }

    else
    {
      v19 = 0;
    }

    if (!v19)
    {
LABEL_22:
      result = 0;
      if (!length)
      {
        return result;
      }

      goto LABEL_23;
    }

    v21 = values[v13].var1;
    valueData = self->valueData;
    UIReadNibArchiveVInt32(valueData, self->valueDataSize, &v21, &v23);
    result = &valueData[v21];
    if (!length)
    {
      return result;
    }

LABEL_23:
    *length = v23;
    return result;
  }

LABEL_11:
  result = 0;
  if (nextValueSearchIndex + 1 < var1)
  {
    v16 = nextValueSearchIndex + 1;
  }

  else
  {
    v16 = 0;
  }

  self->recursiveState.nextValueSearchIndex = v16;
  if (length)
  {
    goto LABEL_23;
  }

  return result;
}

- (BOOL)decodeBoolForKey:(id)key
{
  v22 = 0;
  v4 = [(UINibStringIDTable *)self->keyIDTable lookupKey:key identifier:&v22];
  if (!v4)
  {
    return v4;
  }

  objectID_low = LODWORD(self->recursiveState.objectID);
  if (((self->keyMasks[objectID_low] >> v22) & 1) == 0)
  {
    goto LABEL_24;
  }

  v6 = &self->objects[objectID_low];
  var0 = v6->var0;
  var1 = v6->var1;
  nextValueSearchIndex = self->recursiveState.nextValueSearchIndex;
  if (nextValueSearchIndex >= var1)
  {
LABEL_7:
    if (!nextValueSearchIndex)
    {
LABEL_11:
      LOBYTE(v4) = 0;
      if (nextValueSearchIndex + 1 < var1)
      {
        v14 = nextValueSearchIndex + 1;
      }

      else
      {
        v14 = 0;
      }

      self->recursiveState.nextValueSearchIndex = v14;
      return v4;
    }

    v13 = 0;
    while (1)
    {
      v12 = var0;
      if (self->values[var0].var0 == v22)
      {
        break;
      }

      --v13;
      ++var0;
      if (-nextValueSearchIndex == v13)
      {
        goto LABEL_11;
      }
    }

    v15 = -v13;
  }

  else
  {
    v10 = -nextValueSearchIndex;
    v11 = nextValueSearchIndex + var0;
    while (1)
    {
      v12 = v11;
      if (self->values[v11].var0 == v22)
      {
        break;
      }

      --v10;
      ++v11;
      if (-var1 == v10)
      {
        goto LABEL_7;
      }
    }

    v15 = -v10;
  }

  self->recursiveState.nextValueSearchIndex = v15;
  values = self->values;
  if (!values)
  {
    goto LABEL_24;
  }

  v17 = self->valueTypes[v12];
  if (v17 == 5)
  {
    LOBYTE(v4) = 1;
    return v4;
  }

  if (v17 == 4 || v17 > 3)
  {
LABEL_24:
    LOBYTE(v4) = 0;
    return v4;
  }

  v18 = 0;
  v19 = &values[v12];
  valueData = self->valueData;
  if (self->valueTypes[v12] > 1u)
  {
    if (v17 == 2)
    {
      v18 = *&valueData[v19->var1];
    }

    else if (v17 == 3)
    {
      v18 = *&valueData[v19->var1];
    }
  }

  else if (self->valueTypes[v12])
  {
    v18 = *&valueData[v19->var1];
  }

  else
  {
    v18 = valueData[v19->var1];
  }

  LOBYTE(v4) = v18 != 0;
  return v4;
}

- (float)decodeFloatForKey:(id)key
{
  v22 = 0;
  v4 = [(UINibStringIDTable *)self->keyIDTable lookupKey:key identifier:&v22];
  result = 0.0;
  if (!v4)
  {
    return result;
  }

  objectID_low = LODWORD(self->recursiveState.objectID);
  if (((self->keyMasks[objectID_low] >> v22) & 1) == 0)
  {
    return result;
  }

  v7 = &self->objects[objectID_low];
  var0 = v7->var0;
  var1 = v7->var1;
  nextValueSearchIndex = self->recursiveState.nextValueSearchIndex;
  if (nextValueSearchIndex >= var1)
  {
LABEL_7:
    if (!nextValueSearchIndex)
    {
LABEL_11:
      if (nextValueSearchIndex + 1 < var1)
      {
        v15 = nextValueSearchIndex + 1;
      }

      else
      {
        v15 = 0;
      }

      self->recursiveState.nextValueSearchIndex = v15;
      return result;
    }

    v14 = 0;
    while (1)
    {
      v13 = var0;
      if (self->values[var0].var0 == v22)
      {
        break;
      }

      --v14;
      ++var0;
      if (-nextValueSearchIndex == v14)
      {
        goto LABEL_11;
      }
    }

    v16 = -v14;
  }

  else
  {
    v11 = -nextValueSearchIndex;
    v12 = nextValueSearchIndex + var0;
    while (1)
    {
      v13 = v12;
      if (self->values[v12].var0 == v22)
      {
        break;
      }

      --v11;
      ++v12;
      if (-var1 == v11)
      {
        goto LABEL_7;
      }
    }

    v16 = -v11;
  }

  self->recursiveState.nextValueSearchIndex = v16;
  values = self->values;
  v18 = &values[v13];
  v19 = self->valueTypes[v13];
  if (values)
  {
    v20 = v19 == 6;
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    return *(self->valueData + v18->var1);
  }

  if (values)
  {
    v21 = v19 == 7;
  }

  else
  {
    v21 = 0;
  }

  if (v21)
  {
    return *(self->valueData + v18->var1);
  }

  return result;
}

- (double)decodeDoubleForKey:(id)key
{
  v22 = 0;
  v4 = [(UINibStringIDTable *)self->keyIDTable lookupKey:key identifier:&v22];
  result = 0.0;
  if (!v4)
  {
    return result;
  }

  objectID_low = LODWORD(self->recursiveState.objectID);
  if (((self->keyMasks[objectID_low] >> v22) & 1) == 0)
  {
    return result;
  }

  v7 = &self->objects[objectID_low];
  var0 = v7->var0;
  var1 = v7->var1;
  nextValueSearchIndex = self->recursiveState.nextValueSearchIndex;
  if (nextValueSearchIndex >= var1)
  {
LABEL_7:
    if (!nextValueSearchIndex)
    {
LABEL_11:
      if (nextValueSearchIndex + 1 < var1)
      {
        v15 = nextValueSearchIndex + 1;
      }

      else
      {
        v15 = 0;
      }

      self->recursiveState.nextValueSearchIndex = v15;
      return result;
    }

    v14 = 0;
    while (1)
    {
      v13 = var0;
      if (self->values[var0].var0 == v22)
      {
        break;
      }

      --v14;
      ++var0;
      if (-nextValueSearchIndex == v14)
      {
        goto LABEL_11;
      }
    }

    v16 = -v14;
  }

  else
  {
    v11 = -nextValueSearchIndex;
    v12 = nextValueSearchIndex + var0;
    while (1)
    {
      v13 = v12;
      if (self->values[v12].var0 == v22)
      {
        break;
      }

      --v11;
      ++v12;
      if (-var1 == v11)
      {
        goto LABEL_7;
      }
    }

    v16 = -v11;
  }

  self->recursiveState.nextValueSearchIndex = v16;
  values = self->values;
  v18 = &values[v13];
  v19 = self->valueTypes[v13];
  if (values)
  {
    v20 = v19 == 7;
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    return *(self->valueData + v18->var1);
  }

  if (values)
  {
    v21 = v19 == 6;
  }

  else
  {
    v21 = 0;
  }

  if (v21)
  {
    return *(self->valueData + v18->var1);
  }

  return result;
}

- (int64_t)decodeInt64ForKey:(id)key
{
  v20 = 0;
  if (![(UINibStringIDTable *)self->keyIDTable lookupKey:key identifier:&v20])
  {
    return 0;
  }

  objectID_low = LODWORD(self->recursiveState.objectID);
  if (((self->keyMasks[objectID_low] >> v20) & 1) == 0)
  {
    return 0;
  }

  v5 = &self->objects[objectID_low];
  var0 = v5->var0;
  var1 = v5->var1;
  nextValueSearchIndex = self->recursiveState.nextValueSearchIndex;
  if (nextValueSearchIndex >= var1)
  {
LABEL_7:
    if (!nextValueSearchIndex)
    {
LABEL_11:
      result = 0;
      if (nextValueSearchIndex + 1 < var1)
      {
        v14 = nextValueSearchIndex + 1;
      }

      else
      {
        v14 = 0;
      }

      self->recursiveState.nextValueSearchIndex = v14;
      return result;
    }

    v12 = 0;
    while (1)
    {
      v11 = var0;
      if (self->values[var0].var0 == v20)
      {
        break;
      }

      --v12;
      ++var0;
      if (-nextValueSearchIndex == v12)
      {
        goto LABEL_11;
      }
    }

    v15 = -v12;
  }

  else
  {
    v9 = -nextValueSearchIndex;
    v10 = nextValueSearchIndex + var0;
    while (1)
    {
      v11 = v10;
      if (self->values[v10].var0 == v20)
      {
        break;
      }

      --v9;
      ++v10;
      if (-var1 == v9)
      {
        goto LABEL_7;
      }
    }

    v15 = -v9;
  }

  self->recursiveState.nextValueSearchIndex = v15;
  values = self->values;
  if (!values)
  {
    return 0;
  }

  v17 = self->valueTypes[v11];
  if (v17 > 3)
  {
    if ((v17 & 0x7E) == 4)
    {
      return v17 == 5;
    }

    return 0;
  }

  result = 0;
  v18 = &values[v11];
  valueData = self->valueData;
  if (self->valueTypes[v11] > 1u)
  {
    if (v17 == 2)
    {
      return *&valueData[v18->var1];
    }

    else if (v17 == 3)
    {
      return *&valueData[v18->var1];
    }
  }

  else if (self->valueTypes[v11])
  {
    return *&valueData[v18->var1];
  }

  else
  {
    return valueData[v18->var1];
  }

  return result;
}

- (int64_t)decodeIntegerForKey:(id)key
{
  v20 = 0;
  if (![(UINibStringIDTable *)self->keyIDTable lookupKey:key identifier:&v20])
  {
    return 0;
  }

  objectID_low = LODWORD(self->recursiveState.objectID);
  if (((self->keyMasks[objectID_low] >> v20) & 1) == 0)
  {
    return 0;
  }

  v5 = &self->objects[objectID_low];
  var0 = v5->var0;
  var1 = v5->var1;
  nextValueSearchIndex = self->recursiveState.nextValueSearchIndex;
  if (nextValueSearchIndex >= var1)
  {
LABEL_7:
    if (!nextValueSearchIndex)
    {
LABEL_11:
      result = 0;
      if (nextValueSearchIndex + 1 < var1)
      {
        v14 = nextValueSearchIndex + 1;
      }

      else
      {
        v14 = 0;
      }

      self->recursiveState.nextValueSearchIndex = v14;
      return result;
    }

    v12 = 0;
    while (1)
    {
      v11 = var0;
      if (self->values[var0].var0 == v20)
      {
        break;
      }

      --v12;
      ++var0;
      if (-nextValueSearchIndex == v12)
      {
        goto LABEL_11;
      }
    }

    v15 = -v12;
  }

  else
  {
    v9 = -nextValueSearchIndex;
    v10 = nextValueSearchIndex + var0;
    while (1)
    {
      v11 = v10;
      if (self->values[v10].var0 == v20)
      {
        break;
      }

      --v9;
      ++v10;
      if (-var1 == v9)
      {
        goto LABEL_7;
      }
    }

    v15 = -v9;
  }

  self->recursiveState.nextValueSearchIndex = v15;
  values = self->values;
  if (!values)
  {
    return 0;
  }

  v17 = self->valueTypes[v11];
  if (v17 > 3)
  {
    if ((v17 & 0x7E) == 4)
    {
      return v17 == 5;
    }

    return 0;
  }

  result = 0;
  v18 = &values[v11];
  valueData = self->valueData;
  if (self->valueTypes[v11] > 1u)
  {
    if (v17 == 2)
    {
      return *&valueData[v18->var1];
    }

    else if (v17 == 3)
    {
      return *&valueData[v18->var1];
    }
  }

  else if (self->valueTypes[v11])
  {
    return *&valueData[v18->var1];
  }

  else
  {
    return valueData[v18->var1];
  }

  return result;
}

- (int)decodeIntForKey:(id)key
{
  v21 = 0;
  LODWORD(v4) = [(UINibStringIDTable *)self->keyIDTable lookupKey:key identifier:&v21];
  if (!v4)
  {
    return v4;
  }

  objectID_low = LODWORD(self->recursiveState.objectID);
  if (((self->keyMasks[objectID_low] >> v21) & 1) == 0)
  {
    goto LABEL_22;
  }

  v6 = &self->objects[objectID_low];
  var0 = v6->var0;
  var1 = v6->var1;
  nextValueSearchIndex = self->recursiveState.nextValueSearchIndex;
  if (nextValueSearchIndex >= var1)
  {
LABEL_7:
    if (!nextValueSearchIndex)
    {
LABEL_11:
      LODWORD(v4) = 0;
      if (nextValueSearchIndex + 1 < var1)
      {
        v14 = nextValueSearchIndex + 1;
      }

      else
      {
        v14 = 0;
      }

      self->recursiveState.nextValueSearchIndex = v14;
      return v4;
    }

    v13 = 0;
    while (1)
    {
      v12 = var0;
      if (self->values[var0].var0 == v21)
      {
        break;
      }

      --v13;
      ++var0;
      if (-nextValueSearchIndex == v13)
      {
        goto LABEL_11;
      }
    }

    v15 = -v13;
  }

  else
  {
    v10 = -nextValueSearchIndex;
    v11 = nextValueSearchIndex + var0;
    while (1)
    {
      v12 = v11;
      if (self->values[v11].var0 == v21)
      {
        break;
      }

      --v10;
      ++v11;
      if (-var1 == v10)
      {
        goto LABEL_7;
      }
    }

    v15 = -v10;
  }

  self->recursiveState.nextValueSearchIndex = v15;
  values = self->values;
  if (!values)
  {
LABEL_22:
    LODWORD(v4) = 0;
    return v4;
  }

  v17 = self->valueTypes[v12];
  if (v17 > 3)
  {
    LODWORD(v4) = (v17 & 0x7E) == 4 && v17 == 5;
  }

  else
  {
    LODWORD(v4) = 0;
    v18 = &values[v12];
    valueData = self->valueData;
    if (self->valueTypes[v12] > 1u)
    {
      if (v17 == 2)
      {
        LODWORD(v4) = *&valueData[v18->var1];
      }

      else if (v17 == 3)
      {
        return *&valueData[v18->var1];
      }
    }

    else if (self->valueTypes[v12])
    {
      LODWORD(v4) = *&valueData[v18->var1];
    }

    else
    {
      LODWORD(v4) = valueData[v18->var1];
    }
  }

  return v4;
}

- (int)decodeInt32ForKey:(id)key
{
  v21 = 0;
  LODWORD(v4) = [(UINibStringIDTable *)self->keyIDTable lookupKey:key identifier:&v21];
  if (!v4)
  {
    return v4;
  }

  objectID_low = LODWORD(self->recursiveState.objectID);
  if (((self->keyMasks[objectID_low] >> v21) & 1) == 0)
  {
    goto LABEL_22;
  }

  v6 = &self->objects[objectID_low];
  var0 = v6->var0;
  var1 = v6->var1;
  nextValueSearchIndex = self->recursiveState.nextValueSearchIndex;
  if (nextValueSearchIndex >= var1)
  {
LABEL_7:
    if (!nextValueSearchIndex)
    {
LABEL_11:
      LODWORD(v4) = 0;
      if (nextValueSearchIndex + 1 < var1)
      {
        v14 = nextValueSearchIndex + 1;
      }

      else
      {
        v14 = 0;
      }

      self->recursiveState.nextValueSearchIndex = v14;
      return v4;
    }

    v13 = 0;
    while (1)
    {
      v12 = var0;
      if (self->values[var0].var0 == v21)
      {
        break;
      }

      --v13;
      ++var0;
      if (-nextValueSearchIndex == v13)
      {
        goto LABEL_11;
      }
    }

    v15 = -v13;
  }

  else
  {
    v10 = -nextValueSearchIndex;
    v11 = nextValueSearchIndex + var0;
    while (1)
    {
      v12 = v11;
      if (self->values[v11].var0 == v21)
      {
        break;
      }

      --v10;
      ++v11;
      if (-var1 == v10)
      {
        goto LABEL_7;
      }
    }

    v15 = -v10;
  }

  self->recursiveState.nextValueSearchIndex = v15;
  values = self->values;
  if (!values)
  {
LABEL_22:
    LODWORD(v4) = 0;
    return v4;
  }

  v17 = self->valueTypes[v12];
  if (v17 > 3)
  {
    LODWORD(v4) = (v17 & 0x7E) == 4 && v17 == 5;
  }

  else
  {
    LODWORD(v4) = 0;
    v18 = &values[v12];
    valueData = self->valueData;
    if (self->valueTypes[v12] > 1u)
    {
      if (v17 == 2)
      {
        LODWORD(v4) = *&valueData[v18->var1];
      }

      else if (v17 == 3)
      {
        return *&valueData[v18->var1];
      }
    }

    else if (self->valueTypes[v12])
    {
      LODWORD(v4) = *&valueData[v18->var1];
    }

    else
    {
      LODWORD(v4) = valueData[v18->var1];
    }
  }

  return v4;
}

- (BOOL)decodeArrayOfFloats:(float *)floats count:(int64_t)count forKey:(id)key
{
  v17 = 0;
  v7 = [(UINibDecoder *)self decodeBytesForKey:key returnedLength:&v17];
  v8 = 0;
  if (v7)
  {
    v9 = v17;
    if (v17)
    {
      v10 = *v7;
      if (v10 == 7)
      {
        if (v17 - 1 == 8 * count)
        {
          if (count >= 1)
          {
            v13 = 1;
            do
            {
              v14 = 0.0;
              if (v9 >= v13 && v9 - v13 >= 8)
              {
                v15 = *&v7[v13];
                v13 += 8;
                v14 = v15;
              }

              *floats++ = v14;
              --count;
            }

            while (count);
          }

          return 1;
        }
      }

      else if (v10 == 6 && v17 - 1 == 4 * count)
      {
        if (count >= 1)
        {
          v11 = 1;
          do
          {
            v12 = 0;
            if (v9 >= v11 && v9 - v11 >= 4)
            {
              v12 = *&v7[v11];
              v11 += 4;
            }

            *floats++ = v12;
            --count;
          }

          while (count);
        }

        return 1;
      }

      return 0;
    }
  }

  return v8;
}

- (BOOL)decodeArrayOfDoubles:(double *)doubles count:(int64_t)count forKey:(id)key
{
  v17 = 0;
  v7 = [(UINibDecoder *)self decodeBytesForKey:key returnedLength:&v17];
  v8 = 0;
  if (v7)
  {
    v9 = v17;
    if (v17)
    {
      v10 = *v7;
      if (v10 == 7)
      {
        if (v17 - 1 == 8 * count)
        {
          if (count >= 1)
          {
            v14 = 1;
            do
            {
              v15 = 0;
              if (v9 >= v14 && v9 - v14 >= 8)
              {
                v15 = *&v7[v14];
                v14 += 8;
              }

              *doubles++ = v15;
              --count;
            }

            while (count);
          }

          return 1;
        }
      }

      else if (v10 == 6 && v17 - 1 == 4 * count)
      {
        if (count >= 1)
        {
          v11 = 1;
          do
          {
            v12 = 0.0;
            if (v9 >= v11 && v9 - v11 >= 4)
            {
              v13 = *&v7[v11];
              v11 += 4;
              v12 = v13;
            }

            *doubles++ = v12;
            --count;
          }

          while (count);
        }

        return 1;
      }

      return 0;
    }
  }

  return v8;
}

- (BOOL)decodeArrayOfCGFloats:(double *)floats count:(int64_t)count forKey:(id)key
{
  v17 = 0;
  v7 = [(UINibDecoder *)self decodeBytesForKey:key returnedLength:&v17];
  v8 = 0;
  if (v7)
  {
    v9 = v17;
    if (v17)
    {
      v10 = *v7;
      if (v10 == 7)
      {
        if (v17 - 1 == 8 * count)
        {
          if (count >= 1)
          {
            v14 = 1;
            do
            {
              v15 = 0;
              if (v9 >= v14 && v9 - v14 >= 8)
              {
                v15 = *&v7[v14];
                v14 += 8;
              }

              *floats++ = v15;
              --count;
            }

            while (count);
          }

          return 1;
        }
      }

      else if (v10 == 6 && v17 - 1 == 4 * count)
      {
        if (count >= 1)
        {
          v11 = 1;
          do
          {
            v12 = 0.0;
            if (v9 >= v11 && v9 - v11 >= 4)
            {
              v13 = *&v7[v11];
              v11 += 4;
              v12 = v13;
            }

            *floats++ = v12;
            --count;
          }

          while (count);
        }

        return 1;
      }

      return 0;
    }
  }

  return v8;
}

- (CGPoint)decodeCGPointForKey:(id)key
{
  v6[2] = *MEMORY[0x1E69E9840];
  v3 = [(UINibDecoder *)self decodeArrayOfCGFloats:v6 count:2 forKey:key];
  v4 = *v6;
  v5 = *&v6[1];
  if (!v3)
  {
    v5 = 0.0;
    v4 = 0.0;
  }

  result.y = v5;
  result.x = v4;
  return result;
}

- (CGSize)decodeCGSizeForKey:(id)key
{
  v6[2] = *MEMORY[0x1E69E9840];
  v3 = [(UINibDecoder *)self decodeArrayOfCGFloats:v6 count:2 forKey:key];
  v4 = *v6;
  v5 = *&v6[1];
  if (!v3)
  {
    v5 = 0.0;
    v4 = 0.0;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (CGRect)decodeCGRectForKey:(id)key
{
  v8[4] = *MEMORY[0x1E69E9840];
  v3 = [(UINibDecoder *)self decodeArrayOfCGFloats:v8 count:4 forKey:key];
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  if (v3)
  {
    v7 = *v8;
    v6 = *&v8[1];
    v5 = *&v8[2];
    v4 = *&v8[3];
  }

  result.size.height = v4;
  result.size.width = v5;
  result.origin.y = v6;
  result.origin.x = v7;
  return result;
}

- (CGAffineTransform)decodeCGAffineTransformForKey:(SEL)key
{
  v11 = *MEMORY[0x1E69E9840];
  result = [(UINibDecoder *)self decodeArrayOfCGFloats:v10 count:6 forKey:a4];
  if (result)
  {
    v6 = v10[1];
    *&retstr->a = v10[0];
    *&retstr->c = v6;
    v7 = v10[2];
  }

  else
  {
    v8 = MEMORY[0x1E695EFD0];
    v9 = *(MEMORY[0x1E695EFD0] + 16);
    *&retstr->a = *MEMORY[0x1E695EFD0];
    *&retstr->c = v9;
    v7 = *(v8 + 32);
  }

  *&retstr->tx = v7;
  return result;
}

- (UIEdgeInsets)decodeUIEdgeInsetsForKey:(id)key
{
  v8[4] = *MEMORY[0x1E69E9840];
  v3 = [(UINibDecoder *)self decodeArrayOfCGFloats:v8 count:4 forKey:key];
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  if (v3)
  {
    v7 = *v8;
    v6 = *&v8[1];
    v5 = *&v8[2];
    v4 = *&v8[3];
  }

  result.right = v4;
  result.bottom = v5;
  result.left = v6;
  result.top = v7;
  return result;
}

- (void)decodeValueOfObjCType:(const char *)type at:(void *)at
{
  if (strlen(type) == 1)
  {
    v8 = *type;
    if (v8 <= 0x63)
    {
      if (*type > 0x3Fu)
      {
        if (v8 != 64)
        {
          if (v8 == 66)
          {
            *at = [(UINibDecoder *)self decodeBoolForKey:[(UINibDecoder *)self nextGenericKey]];
            return;
          }

          goto LABEL_31;
        }

        v14 = [(UINibDecoder *)self decodeObjectForKey:[(UINibDecoder *)self nextGenericKey]];
      }

      else if (v8 == 42)
      {
        v19 = 0;
        v16 = [(UINibDecoder *)self decodeBytesForKey:[(UINibDecoder *)self nextGenericKey] returnedLength:&v19];
        if (v19)
        {
          v17 = v19 - 1;
        }

        else
        {
          v17 = 0;
        }

        v14 = strndup(v16, v17);
      }

      else
      {
        if (v8 != 58)
        {
LABEL_31:
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v10 = a2;
          selfCopy2 = self;
          v12 = 1070;
          goto LABEL_9;
        }

        v13 = [(UINibDecoder *)self decodeObjectForKey:[(UINibDecoder *)self nextGenericKey]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = NSSelectorFromString(v13);
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      if (*type <= 0x68u)
      {
        if (v8 == 100)
        {
          [(UINibDecoder *)self decodeDoubleForKey:[(UINibDecoder *)self nextGenericKey]];
          *at = v18;
          return;
        }

        if (v8 == 102)
        {
          [(UINibDecoder *)self decodeDoubleForKey:[(UINibDecoder *)self nextGenericKey]];
          *&v15 = v15;
          *at = LODWORD(v15);
          return;
        }

        goto LABEL_31;
      }

      if (v8 == 105)
      {
        *at = [(UINibDecoder *)self decodeIntegerForKey:[(UINibDecoder *)self nextGenericKey]];
        return;
      }

      if (v8 != 113)
      {
        if (v8 == 115)
        {
          *at = [(UINibDecoder *)self decodeIntegerForKey:[(UINibDecoder *)self nextGenericKey]];
          return;
        }

        goto LABEL_31;
      }

      v14 = [(UINibDecoder *)self decodeIntegerForKey:[(UINibDecoder *)self nextGenericKey]];
    }

    *at = v14;
    return;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = a2;
  selfCopy2 = self;
  v12 = 1073;
LABEL_9:

  [currentHandler handleFailureInMethod:v10 object:selfCopy2 file:@"UINibDecoder.m" lineNumber:v12 description:@"The UINibDecoder doesn't decode this type. Please switch your NSCoding implementation to using keyed archiving."];
}

- (id)decodeObject
{
  v3 = 0;
  [(UINibDecoder *)self decodeValueOfObjCType:"@" at:&v3 size:8];
  return v3;
}

- (void)decodeValuesOfObjCTypes:(const char *)types
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];

  [currentHandler handleFailureInMethod:a2 object:self file:@"UINibDecoder.m" lineNumber:1099 description:@"Unimplemented"];
}

- (void)decodeArrayOfObjCType:(const char *)type count:(unint64_t)count at:(void *)at
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];

  [currentHandler handleFailureInMethod:a2 object:self file:@"UINibDecoder.m" lineNumber:1103 description:@"Unimplemented"];
}

- (int64_t)versionForClassName:(id)name
{
  v3 = NSClassFromString(name);
  if (!v3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [(objc_class *)v3 version];
}

@end
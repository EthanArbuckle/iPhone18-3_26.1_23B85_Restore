@interface VMUVMRegion
+ (id)columnHeadersWithOptions:(unint64_t)options maximumLength:(unint64_t)length memorySizeDivisor:(unsigned int)divisor hasFractionalPageSizes:(BOOL)sizes;
+ (void)initialize;
- (BOOL)hasSameInfoAsRegion:(id)region;
- (BOOL)ignoreRegionDuringScanning;
- (BOOL)isEqual:(id)equal;
- (BOOL)isMallocHeapRelated;
- (BOOL)isReadonlyAndClean;
- (BOOL)isSpecialPhysFootprintRegion;
- (BOOL)isStack;
- (BOOL)isUntaggedRegion;
- (BOOL)willNotHoldPointers;
- (VMUVMRegion)init;
- (VMUVMRegion)initWithVMRegionData:(_VMUVMRegionData *)data encodedVersion:(int64_t)version simpleSerializer:(id)serializer error:(id *)error;
- (_VMURange)range;
- (id)breakAtLength:(unint64_t)length;
- (id)descriptionWithOptions:(unint64_t)options maximumLength:(unint64_t)length memorySizeDivisor:(unsigned int)divisor hasFractionalPageSizes:(BOOL)sizes;
- (id)splitOutRange:(_VMURange)range fromRegionIndex:(unint64_t)index regions:(id)regions newZoneName:(id)name reason:(id)reason;
- (unint64_t)dirtyLength;
- (void)addInfoFromRegion:(id)region;
- (void)fixNonEmptyMallocRegionType;
- (void)getVMRegionAttributeStatusData:(_VMUVMRegionAttributeStatusData *)data;
- (void)getVMRegionData:(_VMUVMRegionData *)data withSimpleSerializer:(id)serializer;
- (void)setVMRegionAttributeStatusData:(_VMUVMRegionAttributeStatusData *)data;
@end

@implementation VMUVMRegion

- (VMUVMRegion)init
{
  v3.receiver = self;
  v3.super_class = VMUVMRegion;
  result = [(VMUVMRegion *)&v3 init];
  if (result)
  {
    result->zone_index = -1;
  }

  return result;
}

- (_VMURange)range
{
  length = self->range.length;
  location = self->range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (BOOL)isUntaggedRegion
{
  user_tag = self->user_tag;
  if (!self->isExclaveRegion)
  {
    return !user_tag && !self->external_pager && self->share_mode != 5;
  }

  return !user_tag && !self->external_pager;
}

- (BOOL)isStack
{
  if (self->isExclaveRegion)
  {
    v2 = 12;
  }

  else
  {
    v2 = 30;
  }

  return self->user_tag == v2;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [self setVersion:2];
  }
}

- (VMUVMRegion)initWithVMRegionData:(_VMUVMRegionData *)data encodedVersion:(int64_t)version simpleSerializer:(id)serializer error:(id *)error
{
  v38[1] = *MEMORY[0x1E69E9840];
  serializerCopy = serializer;
  v34.receiver = self;
  v34.super_class = VMUVMRegion;
  v11 = [(VMUVMRegion *)&v34 init];
  if (!v11)
  {
    goto LABEL_6;
  }

  v33 = 0;
  if (!error)
  {
    error = &v33;
  }

  if (version == 1)
  {
    fwrite("Memory graph file content is obsolete development version, no longer supported\n", 0x4FuLL, 1uLL, *MEMORY[0x1E69E9848]);
    exit(1);
  }

  if ([objc_opt_class() version] < version)
  {
    goto LABEL_6;
  }

  if (!data)
  {
    v26 = MEMORY[0x1E696ABC0];
    v37 = *MEMORY[0x1E696A578];
    v38[0] = @"The provided memory graph file is corrupted";
    v27 = MEMORY[0x1E695DF20];
    v28 = v38;
    v29 = &v37;
LABEL_14:
    v30 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:1];
    *error = [v26 errorWithDomain:@"VMUVMRegionDomain" code:1 userInfo:v30];

LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

  *(v11 + 8) = *&data->var0;
  *(v11 + 6) = data->var3;
  *(v11 + 7) = data->var4;
  if (!serializerCopy)
  {
    v26 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A578];
    v36 = @"The provided memory graph file is corrupted";
    v27 = MEMORY[0x1E695DF20];
    v28 = &v36;
    v29 = &v35;
    goto LABEL_14;
  }

  v13 = [serializerCopy copyDeserializedStringWithID:data->var5 error:error];
  v14 = *(v11 + 4);
  *(v11 + 4) = v13;

  if (*error)
  {
    goto LABEL_15;
  }

  v15 = [serializerCopy copyDeserializedStringWithID:data->var6 error:error];
  v16 = *(v11 + 5);
  *(v11 + 5) = v15;

  if (*error)
  {
    goto LABEL_15;
  }

  *(v11 + 26) = data->var7;
  *(v11 + 32) = data->var8;
  var10 = data->var10;
  *(v11 + 12) = data->var9;
  *(v11 + 13) = var10;
  *(v11 + 14) = data->var11;
  v11[49] = data->var12;
  v11[50] = data->var13;
  var16 = data->var16;
  *(v11 + 17) = data->var15;
  *(v11 + 36) = var16;
  *(v11 + 37) = data->var2;
  v19 = v11[132] & 0xFE | *(data + 68) & 1;
  v11[132] = v19;
  v20 = v19 & 0xFFFFFFFD | (2 * ((*(data + 68) >> 1) & 1));
  v11[132] = v20;
  v21 = v20 & 0xFFFFFFFB | (4 * ((*(data + 68) >> 2) & 1));
  v11[132] = v21;
  v22 = v21 & 0xFFFFFFF7 | (8 * ((*(data + 68) >> 3) & 1));
  v11[132] = v22;
  v23 = v22 & 0xFFFFFFEF | (16 * ((*(data + 68) >> 4) & 1));
  v11[132] = v23;
  v24 = v23 & 0xFFFFFFDF | (32 * ((*(data + 68) >> 5) & 1));
  v11[132] = v24;
  v25 = v24 & 0xFFFFFFBF | (((*(data + 68) >> 6) & 1) << 6);
  v11[132] = v25;
  v11[132] = *(data + 68) & 0x80 | v25 & 0x7F;
  *(v11 + 20) = data->var26;
  *(v11 + 21) = data->var27;
  *(v11 + 22) = data->var28;
  *(v11 + 23) = data->var29;
  *(v11 + 24) = data->var30;
  *(v11 + 25) = data->var31;
  *(v11 + 26) = data->var32;
  *(v11 + 38) = 1;
LABEL_6:
  v12 = v11;
LABEL_16:

  v31 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)setVMRegionAttributeStatusData:(_VMUVMRegionAttributeStatusData *)data
{
  v3 = *(self + 132) & 0x7F | (*data >> 2 << 7);
  *(self + 132) = v3;
  LOBYTE(v3) = v3 & 0xDF | (32 * (*data & 1));
  *(self + 132) = v3;
  *(self + 132) = v3 & 0xBF | (32 * *data) & 0x40;
}

- (void)getVMRegionData:(_VMUVMRegionData *)data withSimpleSerializer:(id)serializer
{
  *&data->var0 = self->range;
  data->var3 = self->prot;
  data->var4 = self->maxProt;
  type = self->type;
  serializerCopy = serializer;
  data->var5 = [serializerCopy serializeString:type];
  LODWORD(type) = [serializerCopy serializeString:self->path];

  data->var6 = type;
  data->var7 = self->user_tag;
  ref_count = self->ref_count;
  data->var8 = self->nesting_depth;
  data->var9 = ref_count;
  object_id = self->object_id;
  data->var10 = self->purgeable;
  data->var11 = object_id;
  data->var12 = self->external_pager;
  data->var13 = self->share_mode;
  data->var15 = self->mallocBlockCount;
  data->var16 = self->mallocTypeFlag;
  data->var2 = self->zone_index;
  LODWORD(object_id) = *(data + 17) & 0xFFFFFFFE | *(self + 132) & 1;
  *(data + 17) = object_id;
  LODWORD(object_id) = object_id & 0xFFFFFFFD | (2 * ((*(self + 132) >> 1) & 1));
  *(data + 17) = object_id;
  LODWORD(object_id) = object_id & 0xFFFFFFFB | (4 * ((*(self + 132) >> 2) & 1));
  *(data + 17) = object_id;
  LODWORD(object_id) = object_id & 0xFFFFFFF7 | (8 * ((*(self + 132) >> 3) & 1));
  *(data + 17) = object_id;
  v10 = object_id & 0xEF | *(self + 132) & 0x10;
  *(data + 17) = v10;
  v11 = v10 & 0xFFFFFFDF | *(self + 132) & 0x20;
  *(data + 17) = v11;
  v12 = v11 & 0xFFFFFFBF | *(self + 132) & 0x40;
  *(data + 17) = v12;
  *(data + 17) = *(self + 132) & 0x80 | v12 & 0x7F;
  data->var26 = self->resident_size;
  data->var27 = self->shared_now_private_size;
  data->var28 = self->swapped_out_size;
  data->var29 = self->dirty_size;
  data->var30 = self->purgable_vol_size;
  data->var31 = self->purgable_non_vol_size;
  data->var32 = self->purgable_empty_size;
}

- (void)getVMRegionAttributeStatusData:(_VMUVMRegionAttributeStatusData *)data
{
  v3 = *data & 0xFFFB | (4 * ((*(self + 132) >> 7) & 1));
  *data = v3;
  v4 = v3 & 0xFFFFFFFE | (*(self + 132) >> 5) & 1;
  *data = v4;
  *data = v4 & 5 | (*(self + 132) >> 5) & 2;
}

+ (id)columnHeadersWithOptions:(unint64_t)options maximumLength:(unint64_t)length memorySizeDivisor:(unsigned int)divisor hasFractionalPageSizes:(BOOL)sizes
{
  sizesCopy = sizes;
  optionsCopy = options;
  v8 = divisor > 1;
  v9 = objc_alloc(MEMORY[0x1E696AD60]);
  v10 = !v8 || !sizesCopy;
  v11 = 6;
  if (v8 && sizesCopy)
  {
    v12 = 8;
  }

  else
  {
    v12 = 6;
  }

  if (!v10)
  {
    v11 = 8;
  }

  v13 = [v9 initWithFormat:@"%*s", v11, "VSIZE"];
  v14 = v13;
  if ((optionsCopy & 4) != 0)
  {
    [v13 appendFormat:@" %*s", v12, "RSDNT"];
    if ((optionsCopy & 8) == 0)
    {
LABEL_8:
      if ((optionsCopy & 0x800) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((optionsCopy & 8) == 0)
  {
    goto LABEL_8;
  }

  [v14 appendFormat:@" %*s", v12, "DIRTY"];
  if ((optionsCopy & 0x800) != 0)
  {
LABEL_9:
    [v14 appendFormat:@" %*s", v12, "SWAP"];
  }

LABEL_10:
  v15 = maxVMAddressWidth_addressWidth;
  if (!maxVMAddressWidth_addressWidth)
  {
    v16 = flsll(0xFC0000000);
    v17 = v16 + 3;
    if (v16 < -3)
    {
      v17 = v16 + 6;
    }

    v15 = (v17 >> 2);
    maxVMAddressWidth_addressWidth = v17 >> 2;
  }

  if ((optionsCopy & 0x2000000) != 0)
  {
    if (maxAttributesWidth_onceToken != -1)
    {
      +[VMUVMRegion columnHeadersWithOptions:maximumLength:memorySizeDivisor:hasFractionalPageSizes:];
    }

    v18 = maxAttributesWidth_maxAttributesWidthVar;
    v19 = "  ATTRIBUTES";
  }

  else
  {
    v18 = 0;
    v19 = "";
  }

  if ((optionsCopy & 0x10) != 0)
  {
    v20 = " PURGE  ";
  }

  else
  {
    v20 = "";
  }

  v21 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%-*s %*s-%-*s [%@] %s/%s %s%-*s%s  %s", 24, "REGION TYPE", v15, "START ", v15, " END", v14, "PRT", "MAX", "SHRMOD", v18, v19, v20, "REGION DETAIL"];

  return v21;
}

- (BOOL)isMallocHeapRelated
{
  if (!self->isExclaveRegion)
  {
    return MEMORY[0x1EEE00FD8](self->user_tag, a2);
  }

  if ((self->exclaveFlags & 0x10000) != 0)
  {
    return 1;
  }

  return self->user_tag == 13;
}

- (BOOL)ignoreRegionDuringScanning
{
  if (self->isExclaveRegion)
  {
    return 0;
  }

  if ([(NSString *)self->type isEqualToString:@"AttributeGraph Data (old mapping)"])
  {
    return 1;
  }

  return self->user_tag == 10;
}

- (BOOL)willNotHoldPointers
{
  if (self->isExclaveRegion)
  {
    return (BYTE2(self->exclaveFlags) >> 2) & 1;
  }

  else
  {
    user_tag = self->user_tag;
    v4 = user_tag == 100;
    if (user_tag == 88)
    {
      v4 = 1;
    }

    v5 = user_tag > 0x3D;
    v6 = (1 << user_tag) & 0x2000000080300000;
    LOBYTE(v2) = !v5 && v6 != 0 || v4;
  }

  return v2;
}

- (id)descriptionWithOptions:(unint64_t)options maximumLength:(unint64_t)length memorySizeDivisor:(unsigned int)divisor hasFractionalPageSizes:(BOOL)sizes
{
  v11 = objc_autoreleasePoolPush();
  path = self->path;
  if (!path)
  {
    v14 = &stru_1F461F9C8;
    goto LABEL_23;
  }

  if ((options & 2) != 0)
  {
    lastPathComponent = [(NSString *)path lastPathComponent];
  }

  else
  {
    lastPathComponent = path;
  }

  v14 = lastPathComponent;
  isIOSurface = [(VMUVMRegion *)self isIOSurface];
  if ((options & 1) == 0 && isIOSurface)
  {
    v16 = getPathWidth_nonPathLength;
    if (!getPathWidth_nonPathLength)
    {
      v17 = objc_alloc_init(VMUVMRegion);
      type = v17->type;
      v17->type = &stru_1F461F9C8;

      v19 = [(VMUVMRegion *)v17 descriptionWithOptions:options maximumLength:0];
      getPathWidth_nonPathLength = [v19 length];

      v16 = getPathWidth_nonPathLength;
    }

    v20 = v16 + 16;
    v21 = length - v16;
    if (v20 <= length)
    {
      v22 = v21;
    }

    else
    {
      v22 = 16;
    }

    if (v22 < [(__CFString *)v14 length])
    {
      v23 = [(__CFString *)v14 length];
      v24 = MEMORY[0x1E696AEC0];
      v25 = [(__CFString *)v14 substringFromIndex:v23 - v22 + 3];
      v26 = [v24 stringWithFormat:@"...%@", v25];

      v14 = v26;
    }
  }

  if ((options & 0x80000) != 0)
  {
    v27 = [(__CFString *)v14 hasPrefix:@"/System/Library/Frameworks/"];
    v28 = v27;
    v29 = v14;
    if (v27)
    {
      v30 = -[__CFString substringFromIndex:](v14, "substringFromIndex:", [@"/System/Library/Frameworks/" length]);
      v29 = [@"/S/L/F/" stringByAppendingString:v30];
      v31 = v29;
    }

    v32 = v29;

    if (v28)
    {
      goto LABEL_19;
    }

    v33 = [(__CFString *)v32 hasPrefix:@"/System/Library/PrivateFrameworks/"];
    v34 = v33;
    v35 = v32;
    if (v33)
    {
      v36 = -[__CFString substringFromIndex:](v32, "substringFromIndex:", [@"/System/Library/PrivateFrameworks/" length]);
      v35 = [@"/S/L/PF/" stringByAppendingString:v36];
      v37 = v35;
    }

    v14 = v35;

    if ((v34 & 1) == 0)
    {
      v78 = [(__CFString *)v14 hasPrefix:@"/System/Library/"];
      v79 = v78;
      v80 = v14;
      if (v78)
      {
        v81 = -[__CFString substringFromIndex:](v14, "substringFromIndex:", [@"/System/Library/" length]);
        v80 = [@"/S/L/" stringByAppendingString:v81];
        v82 = v80;
      }

      v32 = v80;

      if ((v79 & 1) == 0)
      {
        v83 = [(__CFString *)v32 hasPrefix:@"/usr/lib/system/"];
        v84 = v83;
        v85 = v32;
        if (v83)
        {
          v86 = -[__CFString substringFromIndex:](v32, "substringFromIndex:", [@"/usr/lib/system/" length]);
          v85 = [@"/u/l/s/" stringByAppendingString:v86];
          v87 = v85;
        }

        v14 = v85;

        if (v84)
        {
          goto LABEL_23;
        }

        v88 = [(__CFString *)v14 hasPrefix:@"/usr/lib/"];
        v89 = v88;
        v90 = v14;
        if (v88)
        {
          v91 = -[__CFString substringFromIndex:](v14, "substringFromIndex:", [@"/usr/lib/" length]);
          v90 = [@"/u/l/" stringByAppendingString:v91];
          v92 = v90;
        }

        v32 = v90;

        if ((v89 & 1) == 0)
        {
          v93 = v32;
          if ([(__CFString *)v32 hasPrefix:@"/private/var/mobile/"])
          {
            v94 = -[__CFString substringFromIndex:](v32, "substringFromIndex:", [@"/private/var/mobile/" length]);
            v93 = [@"~mobile/" stringByAppendingString:v94];
            v95 = v93;
          }

          v14 = v93;

          goto LABEL_23;
        }
      }

LABEL_19:
      v14 = v32;
    }
  }

LABEL_23:
  if (divisor > 1 && sizes)
  {
    v38 = 8;
  }

  else
  {
    v38 = 6;
  }

  if ((options & 0x200) != 0)
  {
    v39 = 0;
  }

  else
  {
    v39 = v38;
  }

  v40 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v41 = v40;
  if ((options & 0x200) != 0)
  {
    [v40 appendString:@"V="];
  }

  [v41 appendFormat:@"%*s", v39, pageCountString(self->range.length, divisor, sizes)];
  if ((options & 4) != 0)
  {
    if ((options & 0x200) != 0)
    {
      v44 = @" R=";
    }

    else
    {
      v44 = @" ";
    }

    [v41 appendString:v44];
    [v41 appendFormat:@"%*s", v39, pageCountString(self->resident_size, divisor, sizes)];
    if ((options & 8) == 0)
    {
LABEL_33:
      if ((options & 0x800) == 0)
      {
        goto LABEL_34;
      }

LABEL_44:
      if ((options & 0x200) != 0)
      {
        v46 = @" S=";
      }

      else
      {
        v46 = @" ";
      }

      [v41 appendString:v46];
      [v41 appendFormat:@"%*s", v39, pageCountString(self->swapped_out_size, divisor, sizes)];
      if ((options & 0x2000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_48;
    }
  }

  else if ((options & 8) == 0)
  {
    goto LABEL_33;
  }

  if ((options & 0x200) != 0)
  {
    v45 = @" D=";
  }

  else
  {
    v45 = @" ";
  }

  [v41 appendString:v45];
  [v41 appendFormat:@"%*s", v39, pageCountString(self->dirty_size, divisor, sizes)];
  if ((options & 0x800) != 0)
  {
    goto LABEL_44;
  }

LABEL_34:
  if ((options & 0x2000000) == 0)
  {
LABEL_35:
    v42 = 0;
    v43 = &stru_1F461F9C8;
    goto LABEL_64;
  }

LABEL_48:
  if (maxAttributesWidth_onceToken != -1)
  {
    +[VMUVMRegion columnHeadersWithOptions:maximumLength:memorySizeDivisor:hasFractionalPageSizes:];
  }

  v42 = maxAttributesWidth_maxAttributesWidthVar;
  v47 = [(NSString *)self->path length];
  v49 = (options & 0x80000) == 0 && v47 != 0;
  array = [MEMORY[0x1E695DF70] array];
  v51 = array;
  v52 = *(self + 132);
  if (v52 < 0)
  {
    [array addObject:@"MTE"];
    v52 = *(self + 132);
    if ((v52 & 0x20) == 0)
    {
LABEL_58:
      if ((v52 & 0x40) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    }
  }

  else if ((*(self + 132) & 0x20) == 0)
  {
    goto LABEL_58;
  }

  [v51 addObject:@"TPRO"];
  if ((*(self + 132) & 0x40) != 0)
  {
LABEL_59:
    [v51 addObject:@"JIT"];
  }

LABEL_60:
  if (![v51 count])
  {
    v43 = @" ";
    if (!v49)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  v53 = [v51 componentsJoinedByString:@" "];
  v43 = [@"  " stringByAppendingString:v53];

  if (v49)
  {
LABEL_62:
    v54 = [(__CFString *)v43 stringByPaddingToLength:v42 withString:@" " startingAtIndex:0];

    v43 = v54;
  }

LABEL_63:

LABEL_64:
  v55 = &stru_1F461F9C8;
  if ((options & 0x10) != 0)
  {
    if (self->purgeable == 3)
    {
      if ([(NSString *)self->path length])
      {
        v56 = (options & 0x80000) == 0;
      }

      else
      {
        v56 = 0;
      }

      if (v56)
      {
        v55 = @"        ";
      }

      else
      {
        v55 = &stru_1F461F9C8;
      }
    }

    else
    {
      v57 = objc_alloc(MEMORY[0x1E696AEC0]);
      v58 = [&stru_1F461F9C8 stringByPaddingToLength:v42 - -[__CFString length](v43 withString:"length") startingAtIndex:{@" ", 0}];
      v59 = v58;
      purgeable = self->purgeable;
      if (purgeable > 3)
      {
        v61 = 63;
      }

      else
      {
        v61 = dword_1C6858450[purgeable];
      }

      v55 = [v57 initWithFormat:@" %@PURGE=%c", v58, v61];
    }
  }

  v62 = self->type;
  if (!v62)
  {
    v62 = &stru_1F461F9C8;
  }

  v63 = v62;
  if ([(__CFString *)v63 length]>= 0x19)
  {
    v64 = [(__CFString *)v63 substringToIndex:24];

    v63 = v64;
  }

  if ((options & 0x2000) == 0)
  {
    if ((options & 0x200) == 0)
    {
      v65 = maxVMAddressWidth_addressWidth;
      if (!maxVMAddressWidth_addressWidth)
      {
        v66 = flsll(0xFC0000000);
        v67 = v66 + 3;
        if (v66 < -3)
        {
          v67 = v66 + 6;
        }

        v65 = (v67 >> 2);
        maxVMAddressWidth_addressWidth = v67 >> 2;
      }

      v104 = v11;
      v103 = v55;
      if ([(VMUVMRegion *)self isOwnedUnmappedMemory])
      {
        v68 = MEMORY[0x1E696AEC0];
        v69 = "unmapped";
      }

      else
      {
        if (![(VMUVMRegion *)self isKernelPageTableMemory])
        {
          location = self->range.location;
          if (location < 0xFC0000001)
          {
            v76 = 24;
          }

          else
          {
            v97 = flsll(location);
            v98 = v97 + 3;
            if (v97 < -3)
            {
              v98 = v97 + 6;
            }

            v99 = (v98 >> 2);
            if (v99 < v65)
            {
              [VMUVMRegion descriptionWithOptions:maximumLength:memorySizeDivisor:hasFractionalPageSizes:];
            }

            v76 = (v65 - v99 + 24);
            location = self->range.location;
            v65 = v99;
          }

          location = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*llx", v65, location];
          v75 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%-*llx", v65, self->range.length + self->range.location];
          goto LABEL_125;
        }

        v68 = MEMORY[0x1E696AEC0];
        v69 = "kernel";
      }

      location = [v68 stringWithFormat:@"%*s", v65, v69];
      v75 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%-*s", v65, v69];
      v76 = 24;
LABEL_125:
      v101 = v76;
      v55 = v103;
      v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%-*s %@-%@ [%@] %s/%s SM=%s%@%@  %@", v101, -[__CFString UTF8String](v63, "UTF8String"), location, v75, v41, off_1E827A168[self->prot & 7], off_1E827A168[self->maxProt & 7], VMUVMRegionShareModeName(self->share_mode), v43, v103, v14];

      v11 = v104;
      goto LABEL_126;
    }

    v72 = v43;
    if ([(VMUVMRegion *)self isOwnedUnmappedMemory])
    {
      v73 = v11;
      v74 = @"unmapped";
    }

    else
    {
      v73 = v11;
      if (![(VMUVMRegion *)self isKernelPageTableMemory])
      {
        v74 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%#llx", self->range.location];
        v77 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%#llx", self->range.length + self->range.location];
        goto LABEL_122;
      }

      v74 = @"kernel";
    }

    v77 = v74;
LABEL_122:
    v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s  %@-%@ [%@] %s/%s  %@", -[__CFString UTF8String](v63, "UTF8String"), v74, v77, v41, off_1E827A168[self->prot & 7], off_1E827A168[self->maxProt & 7], v14];

    v11 = v73;
    v43 = v72;
    goto LABEL_126;
  }

  if ([(__CFString *)v63 isEqualToString:@"__DATA"])
  {
    lastPathComponent2 = [(__CFString *)v14 lastPathComponent];

    v14 = lastPathComponent2;
  }

  v71 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ %@", v63, v14];
LABEL_126:

  objc_autoreleasePoolPop(v11);

  return v71;
}

- (BOOL)isReadonlyAndClean
{
  if ((self->prot & 2) != 0)
  {
    return 0;
  }

  if ((self->maxProt & 2) != 0)
  {
    return self->share_mode != 2;
  }

  return 1;
}

- (unint64_t)dirtyLength
{
  v2 = self->swapped_out_size + self->dirty_size;
  purgable_vol_size = self->purgable_vol_size;
  v4 = v2 >= purgable_vol_size;
  v5 = v2 - purgable_vol_size;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isSpecialPhysFootprintRegion
{
  if ([(VMUVMRegion *)self isOwnedUnmappedMemory])
  {
    return 1;
  }

  return [(VMUVMRegion *)self isKernelPageTableMemory];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  v6 = *&self->range == *(equalCopy + 8) && sameString(self->type, *(equalCopy + 4)) && sameString(self->path, v5[5]) && [(VMUVMRegion *)self hasSameInfoAsRegion:v5];

  return v6;
}

- (BOOL)hasSameInfoAsRegion:(id)region
{
  regionCopy = region;
  v5 = *&self->prot == regionCopy[3] && self->share_mode == *(regionCopy + 50) && self->user_tag == *(regionCopy + 26) && self->purgeable == *(regionCopy + 13) && self->object_id == regionCopy[14];

  return v5;
}

- (void)addInfoFromRegion:(id)region
{
  self->range.length += *(region + 2);
  shared_now_private_size = self->shared_now_private_size;
  self->resident_size += *(region + 20);
  self->shared_now_private_size = shared_now_private_size + *(region + 21);
  dirty_size = self->dirty_size;
  self->swapped_out_size += *(region + 22);
  self->dirty_size = dirty_size + *(region + 23);
  purgable_non_vol_size = self->purgable_non_vol_size;
  self->purgable_vol_size += *(region + 24);
  self->purgable_non_vol_size = purgable_non_vol_size + *(region + 25);
  self->purgable_empty_size += *(region + 26);
  pages_resident = self->pages_resident;
  self->virtual_pages += *(region + 7);
  self->pages_resident = pages_resident + *(region + 8);
  pages_swapped_out = self->pages_swapped_out;
  self->pages_shared_now_private += *(region + 9);
  self->pages_swapped_out = pages_swapped_out + *(region + 10);
  self->pages_dirtied += *(region + 11);
  ++self->coalesced_region_count;
}

- (id)breakAtLength:(unint64_t)length
{
  if (self->range.length <= length)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [(VMUVMRegion *)length breakAtLength:?];
    }

    v5 = 0;
  }

  else
  {
    v5 = objc_opt_new();
    v6 = self->range.length - length;
    *(v5 + 8) = self->range.location + length;
    *(v5 + 16) = v6;
    self->range.length = length;
    *(v5 + 24) = self->prot;
    *(v5 + 28) = self->maxProt;
    objc_storeStrong((v5 + 32), self->type);
    objc_storeStrong((v5 + 40), self->path);
    *(v5 + 48) = self->summarized;
    *(v5 + 49) = self->external_pager;
    *(v5 + 50) = self->share_mode;
    *(v5 + 52) = self->purgeable;
    *(v5 + 160) = 0u;
    *(v5 + 176) = 0u;
    self->virtual_pages = 0;
    *(v5 + 88) = 0;
    *(v5 + 72) = 0u;
    *(v5 + 56) = 0u;
    *(v5 + 104) = self->user_tag;
    *(v5 + 112) = self->object_id;
    *(v5 + 128) = self->nesting_depth;
    v7 = *(v5 + 132) & 0xFE | *(self + 132) & 1;
    *(v5 + 132) = v7;
    v8 = v7 & 0xFFFFFFFD | (2 * ((*(self + 132) >> 1) & 1));
    *(v5 + 132) = v8;
    v9 = v8 & 0xFFFFFFFB | (4 * ((*(self + 132) >> 2) & 1));
    *(v5 + 132) = v9;
    v10 = v9 & 0xFFFFFFF7 | (8 * ((*(self + 132) >> 3) & 1));
    *(v5 + 132) = v10;
    v11 = v10 & 0xFFFFFFEF | (16 * ((*(self + 132) >> 4) & 1));
    *(v5 + 132) = v11;
    v12 = v11 & 0xFFFFFFDF | (32 * ((*(self + 132) >> 5) & 1));
    *(v5 + 132) = v12;
    v13 = v12 & 0xFFFFFFBF | (((*(self + 132) >> 6) & 1) << 6);
    *(v5 + 132) = v13;
    *(v5 + 132) = *(self + 132) & 0x80 | v13 & 0x7F;
    *(v5 + 136) = self->mallocBlockCount;
    *(v5 + 144) = self->mallocTypeFlag;
    *(v5 + 236) = self->exclaveFlags;
    *(v5 + 232) = self->isExclaveRegion;
    *(v5 + 148) = self->zone_index;
  }

  return v5;
}

- (id)splitOutRange:(_VMURange)range fromRegionIndex:(unint64_t)index regions:(id)regions newZoneName:(id)name reason:(id)reason
{
  length = range.length;
  location = range.location;
  regionsCopy = regions;
  nameCopy = name;
  reasonCopy = reason;
  v16 = [regionsCopy objectAtIndexedSubscript:index];
  if (v16 != self)
  {
    [VMUVMRegion splitOutRange:fromRegionIndex:regions:newZoneName:reason:];
  }

  v17 = VMUIntersectionRange(location, length, self->range.location, self->range.length);
  if (location == v17 && length == v18)
  {
    v19 = location;
  }

  else
  {
    length = v18;
    v19 = v17;
  }

  v20 = self->range.location;
  v21 = self->range.length;
  if (v19 == v20 && v21 == length)
  {
    selfCopy2 = self;
  }

  else
  {
    if (v19 == v20)
    {
      v23 = [(VMUVMRegion *)self breakAtLength:length];
      if (v23)
      {
        [regionsCopy insertObject:v23 atIndex:index + 1];
      }

      selfCopy2 = self;
LABEL_13:

      goto LABEL_15;
    }

    if (v21 + v20 == v19 + length)
    {
      selfCopy2 = [(VMUVMRegion *)self breakAtLength:v21 - length];
      if (selfCopy2)
      {
        [regionsCopy insertObject:selfCopy2 atIndex:index + 1];
      }
    }

    else if (v19 <= v20 || v19 + length >= v21 + v20)
    {
      selfCopy2 = 0;
    }

    else
    {
      v27 = [(VMUVMRegion *)self breakAtLength:v19 - v20];
      selfCopy2 = v27;
      if (v27)
      {
        [regionsCopy insertObject:v27 atIndex:index + 1];
        v23 = [(VMUVMRegion *)selfCopy2 breakAtLength:length];
        if (v23)
        {
          [regionsCopy insertObject:v23 atIndex:index + 2];
        }

        goto LABEL_13;
      }
    }
  }

LABEL_15:

  return selfCopy2;
}

- (void)fixNonEmptyMallocRegionType
{
  if ([(VMUVMRegion *)self isMallocHeapRelated])
  {
    v3 = [(NSString *)self->type rangeOfString:@" (empty)"];
    if (v3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = [(NSString *)self->type substringToIndex:v3];
      type = self->type;
      self->type = v4;
    }
  }
}

- (void)breakAtLength:(unint64_t)a1 .cold.1(unint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = memorySizeString(a1);
  v5 = [a2 description];
  v7 = 134218498;
  v8 = a1;
  v9 = 2080;
  v10 = v4;
  v11 = 2080;
  v12 = [v5 UTF8String];
  _os_log_error_impl(&dword_1C679D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "ignoring request to break region at excess length %llu (%s) for %s\n", &v7, 0x20u);

  v6 = *MEMORY[0x1E69E9840];
}

@end
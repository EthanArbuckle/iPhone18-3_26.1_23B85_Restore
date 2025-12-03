@interface CommonPlist
- (CommonPlist)init;
- (int)readPlist:(id)plist;
@end

@implementation CommonPlist

- (CommonPlist)init
{
  v3.receiver = self;
  v3.super_class = CommonPlist;
  result = [(CommonPlist *)&v3 init];
  if (result)
  {
    *&result->nrfVersion = xmmword_2959D5FE0;
  }

  return result;
}

- (int)readPlist:(id)plist
{
  plistCopy = plist;
  v7 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v5, @"FigMetalAllocatorType", v6);
  v11 = v7;
  if (v7)
  {
    self->allocatorType = objc_msgSend_intValue(v7, v8, v9, v10);
  }

  v14 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v12, @"FigMetalAllocatorAllowFallback", v13);
  v18 = v14;
  if (v14)
  {
    self->allowFallback = objc_msgSend_BOOLValue(v14, v15, v16, v17);
  }

  v21 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v19, @"FigMetalAllocatorCompressionLevel", v20);
  v25 = v21;
  if (v21)
  {
    self->compressionLevel = objc_msgSend_intValue(v21, v22, v23, v24);
  }

  return 0;
}

@end
@interface TSTArchivedLayoutEngineBundle
+ (id)widthHeightCacheFromBundle:(id)bundle withNumberOfRows:(unsigned int)rows andNumberOfColumns:(unsigned int)columns;
- (TSTArchivedLayoutEngineBundle)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSTArchivedLayoutEngineBundle)initWithLayoutEngine:(id)engine;
@end

@implementation TSTArchivedLayoutEngineBundle

- (TSTArchivedLayoutEngineBundle)initWithLayoutEngine:(id)engine
{
  engineCopy = engine;
  v13.receiver = self;
  v13.super_class = TSTArchivedLayoutEngineBundle;
  v9 = [(TSTArchivedLayoutEngineBundle *)&v13 init];
  if (v9)
  {
    v10 = objc_msgSend_widthHeightCache(engineCopy, v5, v6, v7, v8);
    widthHeightCache = v9->_widthHeightCache;
    v9->_widthHeightCache = v10;
  }

  return v9;
}

- (TSTArchivedLayoutEngineBundle)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v17.receiver = self;
  v17.super_class = TSTArchivedLayoutEngineBundle;
  v7 = [(TSTArchivedLayoutEngineBundle *)&v17 init];
  if (v7 && (*(archive + 16) & 1) != 0)
  {
    v8 = [TSTWidthHeightCache alloc];
    if (*(archive + 3))
    {
      v11 = objc_msgSend_initWithArchive_unarchiver_(v8, v9, *(archive + 3), unarchiverCopy, v10);
    }

    else
    {
      v11 = objc_msgSend_initWithArchive_unarchiver_(v8, v9, &TST::_WidthHeightCache_default_instance_, unarchiverCopy, v10);
    }

    v15 = v11;
    objc_msgSend_setWidthHeightCache_(v7, v12, v11, v13, v14);
  }

  return v7;
}

+ (id)widthHeightCacheFromBundle:(id)bundle withNumberOfRows:(unsigned int)rows andNumberOfColumns:(unsigned int)columns
{
  v5 = *&columns;
  v6 = *&rows;
  bundleCopy = bundle;
  v16 = objc_msgSend_widthHeightCache(bundleCopy, v8, v9, v10, v11);
  if (v16)
  {
    v17 = objc_msgSend_widthHeightCache(bundleCopy, v12, v13, v14, v15);
    if (objc_msgSend_numberOfRows(v17, v18, v19, v20, v21) == v6)
    {
      v26 = objc_msgSend_widthHeightCache(bundleCopy, v22, v23, v24, v25);
      v31 = objc_msgSend_numberOfColumns(v26, v27, v28, v29, v30);

      if (v31 == v5)
      {
        v36 = objc_msgSend_widthHeightCache(bundleCopy, v32, v33, v34, v35);
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v37 = [TSTWidthHeightCache alloc];
  v36 = objc_msgSend_initWithNumRows_andNumColumns_(v37, v38, v6, v5, v39);
LABEL_7:
  v40 = v36;

  return v40;
}

@end
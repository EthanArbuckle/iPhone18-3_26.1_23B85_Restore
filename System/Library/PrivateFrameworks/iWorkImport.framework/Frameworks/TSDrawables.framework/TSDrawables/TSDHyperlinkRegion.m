@interface TSDHyperlinkRegion
+ (id)hyperlinkRegionWithURL:(id)a3 bezierPath:(id)a4;
- (BOOL)isEqual:(id)a3;
- (TSDHyperlinkRegion)initWithURL:(id)a3 bezierPath:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation TSDHyperlinkRegion

+ (id)hyperlinkRegionWithURL:(id)a3 bezierPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 alloc];
  v10 = objc_msgSend_initWithURL_bezierPath_(v8, v9, v7, v6);

  return v10;
}

- (TSDHyperlinkRegion)initWithURL:(id)a3 bezierPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSDHyperlinkRegion initWithURL:bezierPath:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDHyperlinkRegion.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 28, 0, "Invalid parameter not satisfying: %{public}s", "aURL != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v27 = MEMORY[0x277D81150];
  v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSDHyperlinkRegion initWithURL:bezierPath:]");
  v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDHyperlinkRegion.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 29, 0, "Invalid parameter not satisfying: %{public}s", "aBezierPath != nil");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
LABEL_3:
  v34.receiver = self;
  v34.super_class = TSDHyperlinkRegion;
  v12 = [(TSDHyperlinkRegion *)&v34 init];
  if (v12)
  {
    v13 = objc_msgSend_copy(v6, v10, v11);
    URL = v12->_URL;
    v12->_URL = v13;

    v17 = objc_msgSend_copy(v9, v15, v16);
    bezierPath = v12->_bezierPath;
    v12->_bezierPath = v17;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5 && ((objc_msgSend_URL(self, v6, v7), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend_URL(v5, v9, v10), v11 = objc_claimAutoreleasedReturnValue(), !(v8 | v11)) || (v14 = v11, v15 = objc_msgSend_isEqual_(v8, v12, v11), v14, v8, v15)))
  {
    v16 = objc_msgSend_bezierPath(self, v12, v13);
    v19 = objc_msgSend_bezierPath(v5, v17, v18);
    isEqual = objc_msgSend_isEqual_(v16, v20, v19);
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  v3 = objc_msgSend_URL(self, a2, v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  URL = self->_URL;
  objc_msgSend_bounds(self->_bezierPath, a2, v2);
  v5 = NSStringFromCGRect(v10);
  v7 = objc_msgSend_stringWithFormat_(v3, v6, @"URL={%@} bounds=%@", URL, v5);

  return v7;
}

@end
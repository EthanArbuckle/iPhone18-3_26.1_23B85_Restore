@interface TSCH3DLabelResourceAttributes
+ (id)labelAttributesWithParagraphStyle:(id)style string:(id)string bitmapContextInfo:(id)info labelWidth:(double)width renderSamples:(double)samples styleProvidingSource:(id)source;
- (BOOL)isEqual:(id)equal;
- (TSCH3DLabelResourceAttributes)initWithParagraphStyle:(id)style string:(id)string bitmapContextInfo:(id)info labelWidth:(double)width renderSamples:(double)samples styleProvidingSource:(id)source;
- (TSWPStyleProviding)styleProvidingSource;
- (id)description;
@end

@implementation TSCH3DLabelResourceAttributes

+ (id)labelAttributesWithParagraphStyle:(id)style string:(id)string bitmapContextInfo:(id)info labelWidth:(double)width renderSamples:(double)samples styleProvidingSource:(id)source
{
  styleCopy = style;
  stringCopy = string;
  infoCopy = info;
  sourceCopy = source;
  v18 = [self alloc];
  v21 = objc_msgSend_initWithParagraphStyle_string_bitmapContextInfo_labelWidth_renderSamples_styleProvidingSource_(v18, v19, width, samples, v20, styleCopy, stringCopy, infoCopy, sourceCopy);

  return v21;
}

- (TSCH3DLabelResourceAttributes)initWithParagraphStyle:(id)style string:(id)string bitmapContextInfo:(id)info labelWidth:(double)width renderSamples:(double)samples styleProvidingSource:(id)source
{
  styleCopy = style;
  stringCopy = string;
  infoCopy = info;
  sourceCopy = source;
  v52.receiver = self;
  v52.super_class = TSCH3DLabelResourceAttributes;
  v20 = [(TSCH3DLabelResourceAttributes *)&v52 init];
  if (v20)
  {
    if (!styleCopy)
    {
      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v21, v22, v23, "[TSCH3DLabelResourceAttributes initWithParagraphStyle:string:bitmapContextInfo:labelWidth:renderSamples:styleProvidingSource:]");
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelResource.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v31, v32, v33, v34, v25, v30, 261, 0, "invalid nil value for '%{public}s'", "paragraphStyle");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
    }

    objc_storeStrong(&v20->_paragraphStyle, style);
    v43 = objc_msgSend_copy(stringCopy, v39, v40, v41, v42);
    string = v20->_string;
    v20->_string = v43;

    v49 = objc_msgSend_copy(infoCopy, v45, v46, v47, v48);
    bitmapContextInfo = v20->_bitmapContextInfo;
    v20->_bitmapContextInfo = v49;

    v20->_labelWidth = width;
    v20->_renderSamples = samples;
    objc_storeWeak(&v20->_styleProvidingSource, sourceCopy);
  }

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = TSUSpecificCast();
    v6 = v5;
    if (v5 && ((labelWidth = self->_labelWidth, v8 = *(v5 + 32), labelWidth == v8) || vabdd_f64(labelWidth, v8) < 0.00999999978) && ((renderSamples = self->_renderSamples, v10 = *(v5 + 40), renderSamples == v10) || vabdd_f64(renderSamples, v10) < 0.00999999978) && ((v13 = *(v5 + 16), v14 = self->_string, v15 = v13, !(v14 | v15)) || (v20 = v15, isEqual = objc_msgSend_isEqual_(v14, v16, v17, v18, v19, v15), v20, v14, isEqual)) && ((v22 = *(v6 + 24), v23 = self->_bitmapContextInfo, v24 = v22, !(v23 | v24)) || (v29 = v24, v30 = objc_msgSend_isEqual_(v23, v25, v26, v27, v28, v24), v29, v23, v30)) && ((v31 = *(v6 + 8), v32 = self->_paragraphStyle, v33 = v31, !(v32 | v33)) || (v38 = v33, v39 = objc_msgSend_isEqual_(v32, v34, v35, v36, v37, v33), v38, v32, v39)))
    {
      WeakRetained = objc_loadWeakRetained(&self->_styleProvidingSource);
      v41 = objc_loadWeakRetained((v6 + 48));
      v11 = sub_2761D04A4(WeakRetained, v41);
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10 = objc_msgSend_paragraphStyle(self, v6, v7, v8, v9);
  v15 = objc_msgSend_string(self, v11, v12, v13, v14);
  objc_msgSend_labelWidth(self, v16, v17, v18, v19);
  v21 = v20;
  objc_msgSend_renderSamples(self, v22, v20, v23, v24);
  v26 = v25;
  v30 = objc_msgSend_styleProvidingSource(self, v27, v25, v28, v29);
  v35 = objc_msgSend_stringWithFormat_(v3, v31, v32, v33, v34, @"<%@: %p paragraphStyle: %p, string: %@, labelWidth: %g, renderSamples: %g, styleProvidingSource: %p>", v5, self, v10, v15, *&v21, *&v26, v30);

  return v35;
}

- (TSWPStyleProviding)styleProvidingSource
{
  WeakRetained = objc_loadWeakRetained(&self->_styleProvidingSource);

  return WeakRetained;
}

@end
@interface WFSlotTemplateImageAttachment
- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6;
- (WFSlotTemplateImageAttachment)initWithData:(id)a3 ofType:(id)a4;
@end

@implementation WFSlotTemplateImageAttachment

- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6
{
  v7 = [(WFSlotTemplateImageAttachment *)self image:a3];
  [v7 size];
  v9 = v8;
  v11 = v10;

  v12 = [(WFSlotTemplateImageAttachment *)self fontForAlignment];
  [v12 wf_lineHeight];
  v14 = v13 * 0.75;

  if (v11 < v14)
  {
    v14 = v11;
  }

  v15 = v9 / v11 * v14;
  v16 = [(WFSlotTemplateImageAttachment *)self fontForAlignment];
  [v16 capHeight];
  v18 = v17;
  [(WFSlotTemplateImageAttachment *)self imageScaleFactor];
  v20 = (v18 - v14 * v19) * 0.5;
  [(WFSlotTemplateImageAttachment *)self imageScaleFactor];
  v22 = v15 * v21;
  [(WFSlotTemplateImageAttachment *)self imageScaleFactor];
  v24 = v14 * v23;

  v25 = 0.0;
  v26 = v20;
  v27 = v22;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (WFSlotTemplateImageAttachment)initWithData:(id)a3 ofType:(id)a4
{
  v7.receiver = self;
  v7.super_class = WFSlotTemplateImageAttachment;
  v4 = [(WFSlotTemplateImageAttachment *)&v7 initWithData:a3 ofType:a4];
  v5 = v4;
  if (v4)
  {
    [(WFSlotTemplateImageAttachment *)v4 setImageScaleFactor:1.0];
  }

  return v5;
}

@end
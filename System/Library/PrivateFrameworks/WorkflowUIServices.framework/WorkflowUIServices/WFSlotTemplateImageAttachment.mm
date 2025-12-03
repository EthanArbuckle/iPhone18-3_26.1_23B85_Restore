@interface WFSlotTemplateImageAttachment
- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index;
- (WFSlotTemplateImageAttachment)initWithData:(id)data ofType:(id)type;
@end

@implementation WFSlotTemplateImageAttachment

- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index
{
  v7 = [(WFSlotTemplateImageAttachment *)self image:container];
  [v7 size];
  v9 = v8;
  v11 = v10;

  fontForAlignment = [(WFSlotTemplateImageAttachment *)self fontForAlignment];
  [fontForAlignment wf_lineHeight];
  v14 = v13 * 0.75;

  if (v11 < v14)
  {
    v14 = v11;
  }

  v15 = v9 / v11 * v14;
  fontForAlignment2 = [(WFSlotTemplateImageAttachment *)self fontForAlignment];
  [fontForAlignment2 capHeight];
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

- (WFSlotTemplateImageAttachment)initWithData:(id)data ofType:(id)type
{
  v7.receiver = self;
  v7.super_class = WFSlotTemplateImageAttachment;
  v4 = [(WFSlotTemplateImageAttachment *)&v7 initWithData:data ofType:type];
  v5 = v4;
  if (v4)
  {
    [(WFSlotTemplateImageAttachment *)v4 setImageScaleFactor:1.0];
  }

  return v5;
}

@end
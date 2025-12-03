@interface UIPrinterFinishingChoice
- (UIPrinterFinishingChoice)initWithTitle:(id)title finishingChoiceID:(int64_t)d finishingChoiceInfo:(id)info;
@end

@implementation UIPrinterFinishingChoice

- (UIPrinterFinishingChoice)initWithTitle:(id)title finishingChoiceID:(int64_t)d finishingChoiceInfo:(id)info
{
  titleCopy = title;
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = UIPrinterFinishingChoice;
  v11 = [(UIPrinterFinishingChoice *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_title, title);
    v12->_finishingChoiceID = d;
    objc_storeStrong(&v12->_finishingChoiceInfo, info);
  }

  return v12;
}

@end
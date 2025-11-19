@interface UIPrinterFinishingChoice
- (UIPrinterFinishingChoice)initWithTitle:(id)a3 finishingChoiceID:(int64_t)a4 finishingChoiceInfo:(id)a5;
@end

@implementation UIPrinterFinishingChoice

- (UIPrinterFinishingChoice)initWithTitle:(id)a3 finishingChoiceID:(int64_t)a4 finishingChoiceInfo:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = UIPrinterFinishingChoice;
  v11 = [(UIPrinterFinishingChoice *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_title, a3);
    v12->_finishingChoiceID = a4;
    objc_storeStrong(&v12->_finishingChoiceInfo, a5);
  }

  return v12;
}

@end
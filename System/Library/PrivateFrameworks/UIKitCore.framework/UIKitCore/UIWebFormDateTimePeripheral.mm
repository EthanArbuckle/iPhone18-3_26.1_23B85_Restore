@interface UIWebFormDateTimePeripheral
+ (id)createPeripheralWithDOMHTMLInputElement:(id)element;
- (UIWebFormDateTimePeripheral)initWithDOMHTMLInputElement:(id)element;
- (int64_t)_datePickerModeForInputType:(id)type;
- (void)dealloc;
@end

@implementation UIWebFormDateTimePeripheral

- (int64_t)_datePickerModeForInputType:(id)type
{
  if ([type isEqualToString:@"date"])
  {
    return 1;
  }

  if ([type isEqualToString:@"datetime-local"])
  {
    return 2;
  }

  if ([type isEqualToString:@"time"])
  {
    return 0;
  }

  if ([type isEqualToString:@"month"])
  {
    return 4;
  }

  return -1;
}

- (UIWebFormDateTimePeripheral)initWithDOMHTMLInputElement:(id)element
{
  v10.receiver = self;
  v10.super_class = UIWebFormDateTimePeripheral;
  v4 = [(UIWebFormDateTimePeripheral *)&v10 init];
  v5 = v4;
  if (v4)
  {
    [(UIWebFormDateTimePeripheral *)v4 set_inputElement:element];
    WebThreadLock();
    v6 = [(UIWebFormDateTimePeripheral *)v5 _datePickerModeForInputType:[(DOMHTMLInputElement *)v5->_inputElement type]];
    if (v6 == -1)
    {

      return 0;
    }

    else
    {
      v7 = v6;
      if (([+[UIDevice userInterfaceIdiom]& 0xFFFFFFFFFFFFFFFBLL currentDevice]== 1)
      {
        v8 = UIWebDefaultDateTimePopover;
      }

      else
      {
        v8 = UIWebDefaultDateTimePicker;
      }

      -[UIWebFormDateTimePeripheral set_control:](v5, "set_control:", [[v8 alloc] initWithDOMHTMLInputElement:element datePickerMode:v7]);
    }
  }

  return v5;
}

- (void)dealloc
{
  [(UIWebFormDateTimePeripheral *)self set_inputElement:0];
  [(UIWebFormDateTimePeripheral *)self set_control:0];
  v3.receiver = self;
  v3.super_class = UIWebFormDateTimePeripheral;
  [(UIWebFormDateTimePeripheral *)&v3 dealloc];
}

+ (id)createPeripheralWithDOMHTMLInputElement:(id)element
{
  v3 = [[UIWebFormDateTimePeripheral alloc] initWithDOMHTMLInputElement:element];

  return v3;
}

@end
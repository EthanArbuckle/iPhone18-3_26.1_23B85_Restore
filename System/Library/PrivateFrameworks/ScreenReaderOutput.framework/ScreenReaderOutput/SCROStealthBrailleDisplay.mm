@interface SCROStealthBrailleDisplay
+ (id)displayWithDelegate:(id)delegate;
+ (id)displayWithIOElement:(id)element driverIdentifier:(id)identifier delegate:(id)delegate;
- (void)_mainDisplayHandler:(id)handler;
@end

@implementation SCROStealthBrailleDisplay

+ (id)displayWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = objc_alloc_init(SCROBrailleStealthDriver);
  if (v4)
  {
    v5 = [(SCROBrailleDisplay *)[SCROStealthBrailleDisplay alloc] _initWithDriver:v4 driverIdentifier:@"com.apple.scrod.braille.driver.stealth" ioElement:0 delegate:delegateCopy];
    v6 = v5;
    if (v5)
    {
      [v5 _delayedDisplayLoad];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)displayWithIOElement:(id)element driverIdentifier:(id)identifier delegate:(id)delegate
{
  delegateCopy = delegate;
  if (element || ![identifier isEqualToString:@"com.apple.scrod.braille.driver.stealth"])
  {
    v8 = 0;
  }

  else
  {
    v8 = [objc_opt_class() displayWithDelegate:delegateCopy];
  }

  return v8;
}

- (void)_mainDisplayHandler:(id)handler
{
  handlerCopy = handler;
  data = [handlerCopy data];
  if ([data length])
  {
    v7[0] = 0;
    v7[1] = 0;
    if (([data getRange:v7 ofAttribute:kSCROTokenAttribute[0]] & 1) != 0 || objc_msgSend(data, "getRange:ofAttribute:", v7, kSCROAlertAttribute[0]))
    {
      v6.receiver = self;
      v6.super_class = SCROStealthBrailleDisplay;
      [(SCROStealthBrailleDisplay *)&v6 _mainDisplayHandler:handlerCopy];
    }
  }
}

@end
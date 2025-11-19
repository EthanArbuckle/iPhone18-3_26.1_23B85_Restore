@interface UPDataDetectorSpan
- (UPDataDetectorSpan)initWithRange:(_NSRange)a3 category:(id)a4 dataDetectorResult:(__DDResult *)a5;
- (UPDataDetectorSpan)initWithRange:(_NSRange)a3 category:(id)a4 dataDetectorResult:(__DDResult *)a5 usoGraph:(id)a6;
- (void)dealloc;
@end

@implementation UPDataDetectorSpan

- (void)dealloc
{
  CFRelease(self->_dataDetectorResult);
  v3.receiver = self;
  v3.super_class = UPDataDetectorSpan;
  [(UPDataDetectorSpan *)&v3 dealloc];
}

- (UPDataDetectorSpan)initWithRange:(_NSRange)a3 category:(id)a4 dataDetectorResult:(__DDResult *)a5 usoGraph:(id)a6
{
  length = a3.length;
  location = a3.location;
  v11 = a4;
  v12 = a6;
  v13 = [(UPSpan *)self initWithRange:location type:length category:2, v11];
  CFRetain(a5);
  v13->_dataDetectorResult = a5;
  usoGraph = v13->_usoGraph;
  v13->_usoGraph = v12;

  return v13;
}

- (UPDataDetectorSpan)initWithRange:(_NSRange)a3 category:(id)a4 dataDetectorResult:(__DDResult *)a5
{
  length = a3.length;
  location = a3.location;
  v9 = a4;
  v10 = [(UPSpan *)self initWithRange:location type:length category:2, v9];
  CFRetain(a5);
  v10->_dataDetectorResult = a5;

  return v10;
}

@end
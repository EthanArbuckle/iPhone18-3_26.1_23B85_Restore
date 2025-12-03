@interface UPDataDetectorSpan
- (UPDataDetectorSpan)initWithRange:(_NSRange)range category:(id)category dataDetectorResult:(__DDResult *)result;
- (UPDataDetectorSpan)initWithRange:(_NSRange)range category:(id)category dataDetectorResult:(__DDResult *)result usoGraph:(id)graph;
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

- (UPDataDetectorSpan)initWithRange:(_NSRange)range category:(id)category dataDetectorResult:(__DDResult *)result usoGraph:(id)graph
{
  length = range.length;
  location = range.location;
  categoryCopy = category;
  graphCopy = graph;
  categoryCopy = [(UPSpan *)self initWithRange:location type:length category:2, categoryCopy];
  CFRetain(result);
  categoryCopy->_dataDetectorResult = result;
  usoGraph = categoryCopy->_usoGraph;
  categoryCopy->_usoGraph = graphCopy;

  return categoryCopy;
}

- (UPDataDetectorSpan)initWithRange:(_NSRange)range category:(id)category dataDetectorResult:(__DDResult *)result
{
  length = range.length;
  location = range.location;
  categoryCopy = category;
  categoryCopy = [(UPSpan *)self initWithRange:location type:length category:2, categoryCopy];
  CFRetain(result);
  categoryCopy->_dataDetectorResult = result;

  return categoryCopy;
}

@end
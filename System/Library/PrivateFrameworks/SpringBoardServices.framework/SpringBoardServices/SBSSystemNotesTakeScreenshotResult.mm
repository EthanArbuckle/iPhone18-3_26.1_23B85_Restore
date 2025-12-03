@interface SBSSystemNotesTakeScreenshotResult
- (SBSSystemNotesTakeScreenshotResult)initWithDisplay:(id)display sendRight:(id)right scale:(double)scale;
- (SBSSystemNotesTakeScreenshotResult)initWithXPCDictionary:(id)dictionary;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation SBSSystemNotesTakeScreenshotResult

- (SBSSystemNotesTakeScreenshotResult)initWithDisplay:(id)display sendRight:(id)right scale:(double)scale
{
  displayCopy = display;
  rightCopy = right;
  v14.receiver = self;
  v14.super_class = SBSSystemNotesTakeScreenshotResult;
  v11 = [(SBSSystemNotesTakeScreenshotResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_displayIdentity, display);
    objc_storeStrong(&v12->_machPortSendRight, right);
    v12->_scale = scale;
  }

  return v12;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
    BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
    BSSerializeDoubleToXPCDictionaryWithKey();
  }
}

- (SBSSystemNotesTakeScreenshotResult)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
  v6 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
  BSDeserializeDoubleFromXPCDictionaryWithKey();
  v8 = v7;

  v9 = [(SBSSystemNotesTakeScreenshotResult *)self initWithDisplay:v5 sendRight:v6 scale:v8];
  return v9;
}

@end
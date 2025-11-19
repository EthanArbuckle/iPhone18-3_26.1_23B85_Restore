@interface SBSSystemNotesTakeScreenshotResult
- (SBSSystemNotesTakeScreenshotResult)initWithDisplay:(id)a3 sendRight:(id)a4 scale:(double)a5;
- (SBSSystemNotesTakeScreenshotResult)initWithXPCDictionary:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation SBSSystemNotesTakeScreenshotResult

- (SBSSystemNotesTakeScreenshotResult)initWithDisplay:(id)a3 sendRight:(id)a4 scale:(double)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = SBSSystemNotesTakeScreenshotResult;
  v11 = [(SBSSystemNotesTakeScreenshotResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_displayIdentity, a3);
    objc_storeStrong(&v12->_machPortSendRight, a4);
    v12->_scale = a5;
  }

  return v12;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  if (a3)
  {
    v3 = a3;
    BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
    BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
    BSSerializeDoubleToXPCDictionaryWithKey();
  }
}

- (SBSSystemNotesTakeScreenshotResult)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v5 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
  v6 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
  BSDeserializeDoubleFromXPCDictionaryWithKey();
  v8 = v7;

  v9 = [(SBSSystemNotesTakeScreenshotResult *)self initWithDisplay:v5 sendRight:v6 scale:v8];
  return v9;
}

@end
@interface _UISceneCarPlaySessionTouchpad
- (CGSize)physicalSize;
- (_UISceneCarPlaySessionTouchpad)initWithSenderID:(unint64_t)a3 sensitivity:(double)a4 physicalSize:(CGSize)a5 supportedFeedbackTypes:(unint64_t)a6;
- (_UISceneCarPlaySessionTouchpad)initWithXPCDictionary:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation _UISceneCarPlaySessionTouchpad

- (_UISceneCarPlaySessionTouchpad)initWithSenderID:(unint64_t)a3 sensitivity:(double)a4 physicalSize:(CGSize)a5 supportedFeedbackTypes:(unint64_t)a6
{
  height = a5.height;
  width = a5.width;
  v12.receiver = self;
  v12.super_class = _UISceneCarPlaySessionTouchpad;
  result = [(_UISceneCarPlaySessionTouchpad *)&v12 init];
  if (result)
  {
    result->_senderID = a3;
    result->_sensitivity = a4;
    result->_physicalSize.width = width;
    result->_physicalSize.height = height;
    result->_supportedFeedbackTypes = a6;
  }

  return result;
}

- (_UISceneCarPlaySessionTouchpad)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UISceneCarPlaySessionTouchpad;
  v5 = [(_UISceneCarPlaySessionTouchpad *)&v9 init];
  if (v5)
  {
    v5->_senderID = xpc_dictionary_get_uint64(v4, [@"senderID" UTF8String]);
    v5->_sensitivity = MEMORY[0x18CFE3DC0](v4, [@"sensitivity" UTF8String]);
    [@"physicalSize" UTF8String];
    BSDeserializeCGSizeFromXPCDictionaryWithKey();
    v5->_physicalSize.width = v6;
    v5->_physicalSize.height = v7;
    v5->_supportedFeedbackTypes = xpc_dictionary_get_uint64(v4, [@"supportedFeedbackTypes" UTF8String]);
  }

  return v5;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  xdict = a3;
  xpc_dictionary_set_uint64(xdict, [@"senderID" UTF8String], self->_senderID);
  MEMORY[0x18CFE3FB0](xdict, [@"sensitivity" UTF8String], self->_sensitivity);
  [@"physicalSize" UTF8String];
  BSSerializeCGSizeToXPCDictionaryWithKey();
  xpc_dictionary_set_uint64(xdict, [@"supportedFeedbackTypes" UTF8String], self->_supportedFeedbackTypes);
}

- (CGSize)physicalSize
{
  width = self->_physicalSize.width;
  height = self->_physicalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
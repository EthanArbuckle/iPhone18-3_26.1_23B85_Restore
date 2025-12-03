@interface _UISceneCarPlaySessionTouchpad
- (CGSize)physicalSize;
- (_UISceneCarPlaySessionTouchpad)initWithSenderID:(unint64_t)d sensitivity:(double)sensitivity physicalSize:(CGSize)size supportedFeedbackTypes:(unint64_t)types;
- (_UISceneCarPlaySessionTouchpad)initWithXPCDictionary:(id)dictionary;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation _UISceneCarPlaySessionTouchpad

- (_UISceneCarPlaySessionTouchpad)initWithSenderID:(unint64_t)d sensitivity:(double)sensitivity physicalSize:(CGSize)size supportedFeedbackTypes:(unint64_t)types
{
  height = size.height;
  width = size.width;
  v12.receiver = self;
  v12.super_class = _UISceneCarPlaySessionTouchpad;
  result = [(_UISceneCarPlaySessionTouchpad *)&v12 init];
  if (result)
  {
    result->_senderID = d;
    result->_sensitivity = sensitivity;
    result->_physicalSize.width = width;
    result->_physicalSize.height = height;
    result->_supportedFeedbackTypes = types;
  }

  return result;
}

- (_UISceneCarPlaySessionTouchpad)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = _UISceneCarPlaySessionTouchpad;
  v5 = [(_UISceneCarPlaySessionTouchpad *)&v9 init];
  if (v5)
  {
    v5->_senderID = xpc_dictionary_get_uint64(dictionaryCopy, [@"senderID" UTF8String]);
    v5->_sensitivity = MEMORY[0x18CFE3DC0](dictionaryCopy, [@"sensitivity" UTF8String]);
    [@"physicalSize" UTF8String];
    BSDeserializeCGSizeFromXPCDictionaryWithKey();
    v5->_physicalSize.width = v6;
    v5->_physicalSize.height = v7;
    v5->_supportedFeedbackTypes = xpc_dictionary_get_uint64(dictionaryCopy, [@"supportedFeedbackTypes" UTF8String]);
  }

  return v5;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  xdict = dictionary;
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
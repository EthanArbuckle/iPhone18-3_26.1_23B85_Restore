@interface SXTextTangierFlowInfo
- (BOOL)hasSpeakableContent;
- (SXTextTangierFlowInfo)initWithStorage:(id)storage range:(_NSRange)range;
- (TSDRepDirectLayerHosting)directLayerHost;
- (_NSRange)range;
@end

@implementation SXTextTangierFlowInfo

- (SXTextTangierFlowInfo)initWithStorage:(id)storage range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  v12.receiver = self;
  v12.super_class = SXTextTangierFlowInfo;
  v9 = [(SXTextTangierFlowInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_storage, storage);
    v10->_range.location = location;
    v10->_range.length = length;
  }

  return v10;
}

- (BOOL)hasSpeakableContent
{
  if (!hasSpeakableContent_speakableCharacterSet)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD48]);
    alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
    [v3 formUnionWithCharacterSet:alphanumericCharacterSet];

    symbolCharacterSet = [MEMORY[0x1E696AB08] symbolCharacterSet];
    [v3 formUnionWithCharacterSet:symbolCharacterSet];

    punctuationCharacterSet = [MEMORY[0x1E696AB08] punctuationCharacterSet];
    [v3 formUnionWithCharacterSet:punctuationCharacterSet];

    65532 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C", 65532];
    [v3 addCharactersInString:65532];

    v8 = [v3 copy];
    v9 = hasSpeakableContent_speakableCharacterSet;
    hasSpeakableContent_speakableCharacterSet = v8;
  }

  storage = [(SXTextTangierFlowInfo *)self storage];
  string = [storage string];
  range = [(SXTextTangierFlowInfo *)self range];
  v14 = [string substringWithRange:{range, v13}];

  LOBYTE(storage) = [v14 rangeOfCharacterFromSet:hasSpeakableContent_speakableCharacterSet] != 0x7FFFFFFFFFFFFFFFLL;
  return storage;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (TSDRepDirectLayerHosting)directLayerHost
{
  WeakRetained = objc_loadWeakRetained(&self->_directLayerHost);

  return WeakRetained;
}

@end
@interface SXTextTangierFlowInfo
- (BOOL)hasSpeakableContent;
- (SXTextTangierFlowInfo)initWithStorage:(id)a3 range:(_NSRange)a4;
- (TSDRepDirectLayerHosting)directLayerHost;
- (_NSRange)range;
@end

@implementation SXTextTangierFlowInfo

- (SXTextTangierFlowInfo)initWithStorage:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v12.receiver = self;
  v12.super_class = SXTextTangierFlowInfo;
  v9 = [(SXTextTangierFlowInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_storage, a3);
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
    v4 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
    [v3 formUnionWithCharacterSet:v4];

    v5 = [MEMORY[0x1E696AB08] symbolCharacterSet];
    [v3 formUnionWithCharacterSet:v5];

    v6 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
    [v3 formUnionWithCharacterSet:v6];

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C", 65532];
    [v3 addCharactersInString:v7];

    v8 = [v3 copy];
    v9 = hasSpeakableContent_speakableCharacterSet;
    hasSpeakableContent_speakableCharacterSet = v8;
  }

  v10 = [(SXTextTangierFlowInfo *)self storage];
  v11 = [v10 string];
  v12 = [(SXTextTangierFlowInfo *)self range];
  v14 = [v11 substringWithRange:{v12, v13}];

  LOBYTE(v10) = [v14 rangeOfCharacterFromSet:hasSpeakableContent_speakableCharacterSet] != 0x7FFFFFFFFFFFFFFFLL;
  return v10;
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
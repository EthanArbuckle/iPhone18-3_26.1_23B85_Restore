@interface AXKonaSpeechSegment
+ (NSDictionary)encodingReplacements;
- (AXKonaSpeechSegment)init;
- (_NSRange)range;
- (void)dealloc;
- (void)setText:(id)text;
@end

@implementation AXKonaSpeechSegment

+ (NSDictionary)encodingReplacements
{
  v2 = EncodingReplacements;
  if (!EncodingReplacements)
  {
    v3 = MEMORY[0x277CBEAC0];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 pathForResource:@"KonaEncodingReplacements" ofType:@"plist"];
    v6 = [v3 dictionaryWithContentsOfFile:v5];
    v7 = EncodingReplacements;
    EncodingReplacements = v6;

    v2 = EncodingReplacements;
  }

  return v2;
}

- (AXKonaSpeechSegment)init
{
  v3.receiver = self;
  v3.super_class = AXKonaSpeechSegment;
  result = [(AXKonaSpeechSegment *)&v3 init];
  if (result)
  {
    result->_encodedString = 0;
  }

  return result;
}

- (void)dealloc
{
  encodedString = self->_encodedString;
  if (encodedString)
  {
    free(encodedString);
  }

  v4.receiver = self;
  v4.super_class = AXKonaSpeechSegment;
  [(AXKonaSpeechSegment *)&v4 dealloc];
}

- (void)setText:(id)text
{
  v26 = *MEMORY[0x277D85DE8];
  textCopy = text;
  v4 = [textCopy copy];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = +[AXKonaSpeechSegment encodingReplacements];
  allKeys = [v5 allKeys];

  v7 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = *v22;
    do
    {
      v9 = 0;
      v10 = v4;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v21 + 1) + 8 * v9);
        v12 = +[AXKonaSpeechSegment encodingReplacements];
        v13 = [v12 objectForKeyedSubscript:v11];
        v4 = [v10 stringByReplacingOccurrencesOfString:v11 withString:v13];

        ++v9;
        v10 = v4;
      }

      while (v7 != v9);
      v7 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  objc_storeStrong(&self->_text, v4);
  encodedString = self->_encodedString;
  if (encodedString)
  {
    free(encodedString);
    self->_encodedString = 0;
  }

  v20 = 0;
  v15 = [v4 maximumLengthOfBytesUsingEncoding:{-[AXKonaSpeechSegment targetEncoding](self, "targetEncoding")}];
  v16 = malloc_type_calloc(v15 + 1, 1uLL, 0x100004077774924uLL);
  self->_encodedString = v16;
  [v4 getBytes:v16 maxLength:v15 usedLength:&v20 encoding:-[AXKonaSpeechSegment targetEncoding](self options:"targetEncoding") range:1 remainingRange:{0, objc_msgSend(v4, "length"), 0}];
  self->_encodedString[v20] = 0;
  [(AXKonaSpeechSegment *)self setEncodedStringLength:v20];
  for (i = 0; [v4 length] > i; ++i)
  {
    if (self->_encodedString[i] == 63 && [v4 characterAtIndex:i] != 63)
    {
      self->_encodedString[i] = 32;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end
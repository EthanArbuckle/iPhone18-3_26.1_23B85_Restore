@interface SRDLanguageObject
- (SRDLanguageObject)initWithLanguageObject:(__RXLanguageObject *)object transcriptionResult:(id)result;
- (void)dealloc;
@end

@implementation SRDLanguageObject

- (SRDLanguageObject)initWithLanguageObject:(__RXLanguageObject *)object transcriptionResult:(id)result
{
  resultCopy = result;
  v10.receiver = self;
  v10.super_class = SRDLanguageObject;
  v7 = [(SRDLanguageObject *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(SRDLanguageObject *)v7 setTranscriptionResult:resultCopy];
    [(SRDLanguageObject *)v8 setLanguageObject:object];
    CFRetain([(SRDLanguageObject *)v8 languageObject]);
  }

  return v8;
}

- (void)dealloc
{
  CFRelease([(SRDLanguageObject *)self languageObject]);
  v3.receiver = self;
  v3.super_class = SRDLanguageObject;
  [(SRDLanguageObject *)&v3 dealloc];
}

@end
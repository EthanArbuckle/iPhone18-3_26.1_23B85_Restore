@interface SRDLanguageObject
- (SRDLanguageObject)initWithLanguageObject:(__RXLanguageObject *)a3 transcriptionResult:(id)a4;
- (void)dealloc;
@end

@implementation SRDLanguageObject

- (SRDLanguageObject)initWithLanguageObject:(__RXLanguageObject *)a3 transcriptionResult:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = SRDLanguageObject;
  v7 = [(SRDLanguageObject *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(SRDLanguageObject *)v7 setTranscriptionResult:v6];
    [(SRDLanguageObject *)v8 setLanguageObject:a3];
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
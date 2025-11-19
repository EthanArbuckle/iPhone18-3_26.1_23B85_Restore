@interface _STSpeechTranslatorClientContext
- (_STSpeechTranslatorClientContext)initWithClientPeer:(id)a3;
- (id)description;
@end

@implementation _STSpeechTranslatorClientContext

- (_STSpeechTranslatorClientContext)initWithClientPeer:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _STSpeechTranslatorClientContext;
  v5 = [(_STSpeechTranslatorClientContext *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(_STSpeechTranslatorClientContext *)v5 setClientPeer:v4];
    v7 = v6;
  }

  else
  {
    v8 = _LTOSLogSTMultiprocess();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(_STSpeechTranslatorClientContext *)v4 initWithClientPeer:v8];
    }
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = _STSpeechTranslatorClientContext;
  v4 = [(_STSpeechTranslatorClientContext *)&v10 description];
  if ([(_STSpeechTranslatorClientContext *)self produceAudio])
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  if ([(_STSpeechTranslatorClientContext *)self produceTranscripts])
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  if ([(_STSpeechTranslatorClientContext *)self produceTranslatedText])
  {
    v7 = "YES";
  }

  else
  {
    v7 = "NO";
  }

  v8 = [v3 stringWithFormat:@"{ %@ produceAudio: %s produceTranscripts: %s produceTranslatedText: %s }", v4, v5, v6, v7];

  return v8;
}

- (void)initWithClientPeer:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_26B5BC000, a2, OS_LOG_TYPE_ERROR, "Failed to super init _STSpeechTranslatorClientContext with peer: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
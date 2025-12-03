@interface FTMutableQssMessage
+ (Class)container_message_mutableClassForType:(int64_t)type;
+ (int64_t)container_message_typeForMutableObject:(id)object;
+ (int64_t)container_message_typeForObject:(id)object;
- (FTApgPronGuessMessage)container_messageAsFTApgPronGuessMessage;
- (FTAsrCorrectionsValidatorMessage)container_messageAsFTAsrCorrectionsValidatorMessage;
- (FTAsrErrorBlamerMessage)container_messageAsFTAsrErrorBlamerMessage;
- (FTAsrGraphemeToPhonemeMessage)container_messageAsFTAsrGraphemeToPhonemeMessage;
- (FTAsrItnMessage)container_messageAsFTAsrItnMessage;
- (FTAsrKeywordFinderMessage)container_messageAsFTAsrKeywordFinderMessage;
- (FTAsrPostItnHammerMessage)container_messageAsFTAsrPostItnHammerMessage;
- (FTAsrRecognitionMessage)container_messageAsFTAsrRecognitionMessage;
- (FTAsrTextNormalizationMessage)container_messageAsFTAsrTextNormalizationMessage;
- (FTBlazarBatchTranslationMessage)container_messageAsFTBlazarBatchTranslationMessage;
- (FTBlazarMultiUserMessage)container_messageAsFTBlazarMultiUserMessage;
- (FTBlazarMultilingualMessage)container_messageAsFTBlazarMultilingualMessage;
- (FTBlazarServiceDiscoveryMessage)container_messageAsFTBlazarServiceDiscoveryMessage;
- (FTBlazarSpeechTranslationMessage)container_messageAsFTBlazarSpeechTranslationMessage;
- (FTBlazarTextToSpeechRouterMessage)container_messageAsFTBlazarTextToSpeechRouterMessage;
- (FTBlazarTextToSpeechRouterStreamingMessage)container_messageAsFTBlazarTextToSpeechRouterStreamingMessage;
- (FTLmtLmScorerMessage)container_messageAsFTLmtLmScorerMessage;
- (FTMtTranslationMessage)container_messageAsFTMtTranslationMessage;
- (FTMutableQssMessage)init;
- (FTNapgCreateLanguageProfileMessage)container_messageAsFTNapgCreateLanguageProfileMessage;
- (FTNlShortcutFuzzyMatchMessage)container_messageAsFTNlShortcutFuzzyMatchMessage;
- (FTSlsLanguageDetectionMessage)container_messageAsFTSlsLanguageDetectionMessage;
- (FTTtsTextToSpeechMessage)container_messageAsFTTtsTextToSpeechMessage;
- (FTTtsTextToSpeechSpeechFeatureMessage)container_messageAsFTTtsTextToSpeechSpeechFeatureMessage;
- (FTTtsTextToSpeechStreamingMessage)container_messageAsFTTtsTextToSpeechStreamingMessage;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)container_message_type;
- (void)setContainer_message:(id)container_message;
- (void)setContainer_messageAsFTApgPronGuessMessage:(id)message;
- (void)setContainer_messageAsFTAsrCorrectionsValidatorMessage:(id)message;
- (void)setContainer_messageAsFTAsrErrorBlamerMessage:(id)message;
- (void)setContainer_messageAsFTAsrGraphemeToPhonemeMessage:(id)message;
- (void)setContainer_messageAsFTAsrItnMessage:(id)message;
- (void)setContainer_messageAsFTAsrKeywordFinderMessage:(id)message;
- (void)setContainer_messageAsFTAsrPostItnHammerMessage:(id)message;
- (void)setContainer_messageAsFTAsrRecognitionMessage:(id)message;
- (void)setContainer_messageAsFTAsrTextNormalizationMessage:(id)message;
- (void)setContainer_messageAsFTBlazarBatchTranslationMessage:(id)message;
- (void)setContainer_messageAsFTBlazarMultiUserMessage:(id)message;
- (void)setContainer_messageAsFTBlazarMultilingualMessage:(id)message;
- (void)setContainer_messageAsFTBlazarServiceDiscoveryMessage:(id)message;
- (void)setContainer_messageAsFTBlazarSpeechTranslationMessage:(id)message;
- (void)setContainer_messageAsFTBlazarTextToSpeechRouterMessage:(id)message;
- (void)setContainer_messageAsFTBlazarTextToSpeechRouterStreamingMessage:(id)message;
- (void)setContainer_messageAsFTLmtLmScorerMessage:(id)message;
- (void)setContainer_messageAsFTMtTranslationMessage:(id)message;
- (void)setContainer_messageAsFTNapgCreateLanguageProfileMessage:(id)message;
- (void)setContainer_messageAsFTNlShortcutFuzzyMatchMessage:(id)message;
- (void)setContainer_messageAsFTSlsLanguageDetectionMessage:(id)message;
- (void)setContainer_messageAsFTTtsTextToSpeechMessage:(id)message;
- (void)setContainer_messageAsFTTtsTextToSpeechSpeechFeatureMessage:(id)message;
- (void)setContainer_messageAsFTTtsTextToSpeechStreamingMessage:(id)message;
- (void)setContainer_message_type:(int64_t)container_message_type;
- (void)setDisable_session_log:(id)disable_session_log;
- (void)setError_message:(id)error_message;
@end

@implementation FTMutableQssMessage

- (FTMutableQssMessage)init
{
  v6.receiver = self;
  v6.super_class = FTMutableQssMessage;
  v2 = [(FTMutableQssMessage *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (void)setError_message:(id)error_message
{
  v4 = [error_message copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setDisable_session_log:(id)disable_session_log
{
  v4 = [disable_session_log copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)container_message_type
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"container_message_type"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setContainer_message_type:(int64_t)container_message_type
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:container_message_type];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (FTApgPronGuessMessage)container_messageAsFTApgPronGuessMessage
{
  if ([(FTMutableQssMessage *)self container_message_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"container_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContainer_messageAsFTApgPronGuessMessage:(id)message
{
  messageCopy = message;
  [(FTMutableQssMessage *)self setContainer_message_type:1];
  v4 = [messageCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"container_message"];
}

- (FTAsrRecognitionMessage)container_messageAsFTAsrRecognitionMessage
{
  if ([(FTMutableQssMessage *)self container_message_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"container_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContainer_messageAsFTAsrRecognitionMessage:(id)message
{
  messageCopy = message;
  [(FTMutableQssMessage *)self setContainer_message_type:2];
  v4 = [messageCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"container_message"];
}

- (FTAsrErrorBlamerMessage)container_messageAsFTAsrErrorBlamerMessage
{
  if ([(FTMutableQssMessage *)self container_message_type]== 3)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"container_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContainer_messageAsFTAsrErrorBlamerMessage:(id)message
{
  messageCopy = message;
  [(FTMutableQssMessage *)self setContainer_message_type:3];
  v4 = [messageCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"container_message"];
}

- (FTAsrItnMessage)container_messageAsFTAsrItnMessage
{
  if ([(FTMutableQssMessage *)self container_message_type]== 4)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"container_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContainer_messageAsFTAsrItnMessage:(id)message
{
  messageCopy = message;
  [(FTMutableQssMessage *)self setContainer_message_type:4];
  v4 = [messageCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"container_message"];
}

- (FTAsrTextNormalizationMessage)container_messageAsFTAsrTextNormalizationMessage
{
  if ([(FTMutableQssMessage *)self container_message_type]== 5)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"container_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContainer_messageAsFTAsrTextNormalizationMessage:(id)message
{
  messageCopy = message;
  [(FTMutableQssMessage *)self setContainer_message_type:5];
  v4 = [messageCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"container_message"];
}

- (FTAsrPostItnHammerMessage)container_messageAsFTAsrPostItnHammerMessage
{
  if ([(FTMutableQssMessage *)self container_message_type]== 6)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"container_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContainer_messageAsFTAsrPostItnHammerMessage:(id)message
{
  messageCopy = message;
  [(FTMutableQssMessage *)self setContainer_message_type:6];
  v4 = [messageCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"container_message"];
}

- (FTAsrKeywordFinderMessage)container_messageAsFTAsrKeywordFinderMessage
{
  if ([(FTMutableQssMessage *)self container_message_type]== 7)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"container_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContainer_messageAsFTAsrKeywordFinderMessage:(id)message
{
  messageCopy = message;
  [(FTMutableQssMessage *)self setContainer_message_type:7];
  v4 = [messageCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"container_message"];
}

- (FTAsrCorrectionsValidatorMessage)container_messageAsFTAsrCorrectionsValidatorMessage
{
  if ([(FTMutableQssMessage *)self container_message_type]== 8)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"container_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContainer_messageAsFTAsrCorrectionsValidatorMessage:(id)message
{
  messageCopy = message;
  [(FTMutableQssMessage *)self setContainer_message_type:8];
  v4 = [messageCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"container_message"];
}

- (FTAsrGraphemeToPhonemeMessage)container_messageAsFTAsrGraphemeToPhonemeMessage
{
  if ([(FTMutableQssMessage *)self container_message_type]== 9)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"container_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContainer_messageAsFTAsrGraphemeToPhonemeMessage:(id)message
{
  messageCopy = message;
  [(FTMutableQssMessage *)self setContainer_message_type:9];
  v4 = [messageCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"container_message"];
}

- (FTBlazarMultiUserMessage)container_messageAsFTBlazarMultiUserMessage
{
  if ([(FTMutableQssMessage *)self container_message_type]== 10)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"container_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContainer_messageAsFTBlazarMultiUserMessage:(id)message
{
  messageCopy = message;
  [(FTMutableQssMessage *)self setContainer_message_type:10];
  v4 = [messageCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"container_message"];
}

- (FTBlazarMultilingualMessage)container_messageAsFTBlazarMultilingualMessage
{
  if ([(FTMutableQssMessage *)self container_message_type]== 11)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"container_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContainer_messageAsFTBlazarMultilingualMessage:(id)message
{
  messageCopy = message;
  [(FTMutableQssMessage *)self setContainer_message_type:11];
  v4 = [messageCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"container_message"];
}

- (FTBlazarSpeechTranslationMessage)container_messageAsFTBlazarSpeechTranslationMessage
{
  if ([(FTMutableQssMessage *)self container_message_type]== 12)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"container_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContainer_messageAsFTBlazarSpeechTranslationMessage:(id)message
{
  messageCopy = message;
  [(FTMutableQssMessage *)self setContainer_message_type:12];
  v4 = [messageCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"container_message"];
}

- (FTBlazarBatchTranslationMessage)container_messageAsFTBlazarBatchTranslationMessage
{
  if ([(FTMutableQssMessage *)self container_message_type]== 13)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"container_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContainer_messageAsFTBlazarBatchTranslationMessage:(id)message
{
  messageCopy = message;
  [(FTMutableQssMessage *)self setContainer_message_type:13];
  v4 = [messageCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"container_message"];
}

- (FTBlazarTextToSpeechRouterMessage)container_messageAsFTBlazarTextToSpeechRouterMessage
{
  if ([(FTMutableQssMessage *)self container_message_type]== 14)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"container_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContainer_messageAsFTBlazarTextToSpeechRouterMessage:(id)message
{
  messageCopy = message;
  [(FTMutableQssMessage *)self setContainer_message_type:14];
  v4 = [messageCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"container_message"];
}

- (FTBlazarTextToSpeechRouterStreamingMessage)container_messageAsFTBlazarTextToSpeechRouterStreamingMessage
{
  if ([(FTMutableQssMessage *)self container_message_type]== 15)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"container_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContainer_messageAsFTBlazarTextToSpeechRouterStreamingMessage:(id)message
{
  messageCopy = message;
  [(FTMutableQssMessage *)self setContainer_message_type:15];
  v4 = [messageCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"container_message"];
}

- (FTBlazarServiceDiscoveryMessage)container_messageAsFTBlazarServiceDiscoveryMessage
{
  if ([(FTMutableQssMessage *)self container_message_type]== 16)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"container_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContainer_messageAsFTBlazarServiceDiscoveryMessage:(id)message
{
  messageCopy = message;
  [(FTMutableQssMessage *)self setContainer_message_type:16];
  v4 = [messageCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"container_message"];
}

- (FTLmtLmScorerMessage)container_messageAsFTLmtLmScorerMessage
{
  if ([(FTMutableQssMessage *)self container_message_type]== 17)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"container_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContainer_messageAsFTLmtLmScorerMessage:(id)message
{
  messageCopy = message;
  [(FTMutableQssMessage *)self setContainer_message_type:17];
  v4 = [messageCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"container_message"];
}

- (FTNapgCreateLanguageProfileMessage)container_messageAsFTNapgCreateLanguageProfileMessage
{
  if ([(FTMutableQssMessage *)self container_message_type]== 18)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"container_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContainer_messageAsFTNapgCreateLanguageProfileMessage:(id)message
{
  messageCopy = message;
  [(FTMutableQssMessage *)self setContainer_message_type:18];
  v4 = [messageCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"container_message"];
}

- (FTMtTranslationMessage)container_messageAsFTMtTranslationMessage
{
  if ([(FTMutableQssMessage *)self container_message_type]== 19)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"container_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContainer_messageAsFTMtTranslationMessage:(id)message
{
  messageCopy = message;
  [(FTMutableQssMessage *)self setContainer_message_type:19];
  v4 = [messageCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"container_message"];
}

- (FTTtsTextToSpeechMessage)container_messageAsFTTtsTextToSpeechMessage
{
  if ([(FTMutableQssMessage *)self container_message_type]== 20)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"container_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContainer_messageAsFTTtsTextToSpeechMessage:(id)message
{
  messageCopy = message;
  [(FTMutableQssMessage *)self setContainer_message_type:20];
  v4 = [messageCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"container_message"];
}

- (FTTtsTextToSpeechStreamingMessage)container_messageAsFTTtsTextToSpeechStreamingMessage
{
  if ([(FTMutableQssMessage *)self container_message_type]== 21)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"container_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContainer_messageAsFTTtsTextToSpeechStreamingMessage:(id)message
{
  messageCopy = message;
  [(FTMutableQssMessage *)self setContainer_message_type:21];
  v4 = [messageCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"container_message"];
}

- (FTTtsTextToSpeechSpeechFeatureMessage)container_messageAsFTTtsTextToSpeechSpeechFeatureMessage
{
  if ([(FTMutableQssMessage *)self container_message_type]== 22)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"container_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContainer_messageAsFTTtsTextToSpeechSpeechFeatureMessage:(id)message
{
  messageCopy = message;
  [(FTMutableQssMessage *)self setContainer_message_type:22];
  v4 = [messageCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"container_message"];
}

- (FTNlShortcutFuzzyMatchMessage)container_messageAsFTNlShortcutFuzzyMatchMessage
{
  if ([(FTMutableQssMessage *)self container_message_type]== 23)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"container_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContainer_messageAsFTNlShortcutFuzzyMatchMessage:(id)message
{
  messageCopy = message;
  [(FTMutableQssMessage *)self setContainer_message_type:23];
  v4 = [messageCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"container_message"];
}

- (FTSlsLanguageDetectionMessage)container_messageAsFTSlsLanguageDetectionMessage
{
  if ([(FTMutableQssMessage *)self container_message_type]== 24)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"container_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContainer_messageAsFTSlsLanguageDetectionMessage:(id)message
{
  messageCopy = message;
  [(FTMutableQssMessage *)self setContainer_message_type:24];
  v4 = [messageCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"container_message"];
}

- (void)setContainer_message:(id)container_message
{
  container_messageCopy = container_message;
  -[FTMutableQssMessage setContainer_message_type:](self, "setContainer_message_type:", [objc_opt_class() container_message_typeForObject:container_messageCopy]);
  v4 = [container_messageCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"container_message"];
}

+ (Class)container_message_mutableClassForType:(int64_t)type
{
  if ((type - 1) > 0x17)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_2789B89E8[type - 1];
    v5 = objc_opt_class();
  }

  return v5;
}

+ (int64_t)container_message_typeForMutableObject:(id)object
{
  objectCopy = object;
  if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 1;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 2;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 3;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 4;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 5;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 6;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 7;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 8;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 9;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 10;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 11;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 12;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 13;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 14;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 15;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 16;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 17;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 18;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 19;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 20;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 21;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 22;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 23;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 24;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)container_message_typeForObject:(id)object
{
  objectCopy = object;
  if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 1;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 2;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 3;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 4;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 5;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 6;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 7;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 8;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 9;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 10;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 11;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 12;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 13;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 14;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 15;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 16;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 17;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 18;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 19;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 20;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 21;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 22;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 23;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 24;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 24;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end
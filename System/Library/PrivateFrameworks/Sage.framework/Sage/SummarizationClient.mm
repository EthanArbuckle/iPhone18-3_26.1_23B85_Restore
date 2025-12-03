@interface SummarizationClient
- (void)didEncounterTextAssistantStreamingError:(id)error forRequestIdentifier:(id)identifier;
- (void)didFinishTextAssistantStreamingForRequestIdentifier:(id)identifier;
- (void)didProduceTextAssistantPartialSummary:(id)summary forRequestIdentifier:(id)identifier;
@end

@implementation SummarizationClient

- (void)didProduceTextAssistantPartialSummary:(id)summary forRequestIdentifier:(id)identifier
{
  sub_1B5EA56A0();
  summaryCopy = summary;

  SummarizationClient.didProduceTextAssistantPartialSummary(_:forRequestIdentifier:)();
}

- (void)didEncounterTextAssistantStreamingError:(id)error forRequestIdentifier:(id)identifier
{
  sub_1B5EA56A0();
  errorCopy = error;

  SummarizationClient.didEncounterTextAssistantStreamingError(_:forRequestIdentifier:)();
}

- (void)didFinishTextAssistantStreamingForRequestIdentifier:(id)identifier
{
  v3 = sub_1B5EA56A0();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  SummarizationClient.didFinishTextAssistantStreaming(forRequestIdentifier:)(v6);
}

@end
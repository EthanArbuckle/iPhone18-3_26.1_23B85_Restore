@interface SummarizationClient
- (void)didEncounterTextAssistantStreamingError:(id)a3 forRequestIdentifier:(id)a4;
- (void)didFinishTextAssistantStreamingForRequestIdentifier:(id)a3;
- (void)didProduceTextAssistantPartialSummary:(id)a3 forRequestIdentifier:(id)a4;
@end

@implementation SummarizationClient

- (void)didProduceTextAssistantPartialSummary:(id)a3 forRequestIdentifier:(id)a4
{
  sub_1B5EA56A0();
  v5 = a3;

  SummarizationClient.didProduceTextAssistantPartialSummary(_:forRequestIdentifier:)();
}

- (void)didEncounterTextAssistantStreamingError:(id)a3 forRequestIdentifier:(id)a4
{
  sub_1B5EA56A0();
  v5 = a3;

  SummarizationClient.didEncounterTextAssistantStreamingError(_:forRequestIdentifier:)();
}

- (void)didFinishTextAssistantStreamingForRequestIdentifier:(id)a3
{
  v3 = sub_1B5EA56A0();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  SummarizationClient.didFinishTextAssistantStreaming(forRequestIdentifier:)(v6);
}

@end
@interface SASActivationInstrumentationSender
- (SASActivationInstrumentationSender)initWithAnalyticsStream:(id)a3;
- (id)_clientEventWithActivationEventIdentifier:(id)a3;
- (void)instrumentActivationMessage:(id)a3;
- (void)instrumentRequestLinkToUEIWithTurnId:(id)a3 activationEventIdentifier:(id)a4;
- (void)instrumentTurnActivatedWithTurnId:(id)a3 activationEventIdentifier:(id)a4;
@end

@implementation SASActivationInstrumentationSender

- (SASActivationInstrumentationSender)initWithAnalyticsStream:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SASActivationInstrumentationSender;
  v6 = [(SASActivationInstrumentationSender *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_analyticsStream, a3);
  }

  return v7;
}

- (void)instrumentTurnActivatedWithTurnId:(id)a3 activationEventIdentifier:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E69CE6F0]);
  v9 = [objc_alloc(MEMORY[0x1E69CF640]) initWithNSUUID:v6];
  [v8 setTurnId:v9];

  v10 = [(SASActivationInstrumentationSender *)self _clientEventWithActivationEventIdentifier:v7];
  [v10 setTurnActivated:v8];
  v11 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315650;
    v15 = "[SASActivationInstrumentationSender instrumentTurnActivatedWithTurnId:activationEventIdentifier:]";
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_DEFAULT, "%s #instrumentation Turn Id: %@, activationIdentifier: %@", &v14, 0x20u);
  }

  v12 = [[SASActivationInstrumentationMessage alloc] initWithEvent:v10 activationEventIdentifier:v7 machAbsoluteTime:mach_absolute_time()];
  [(SASActivationInstrumentationSender *)self instrumentActivationMessage:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)instrumentRequestLinkToUEIWithTurnId:(id)a3 activationEventIdentifier:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E69CF5F8]);
  v9 = [objc_alloc(MEMORY[0x1E69CF640]) initWithNSUUID:v7];
  [v8 setUuid:v9];
  [v8 setComponent:34];
  v10 = objc_alloc_init(MEMORY[0x1E69CF5F8]);
  v11 = [objc_alloc(MEMORY[0x1E69CF640]) initWithNSUUID:v6];
  [v10 setUuid:v11];
  [v10 setComponent:2];
  v12 = objc_alloc_init(MEMORY[0x1E69CF5E8]);
  [v12 setSource:v8];
  [v12 setTarget:v10];
  v13 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315650;
    v16 = "[SASActivationInstrumentationSender instrumentRequestLinkToUEIWithTurnId:activationEventIdentifier:]";
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_1C8137000, v13, OS_LOG_TYPE_DEFAULT, "%s #instrumentation Sending RequestLink event for Turn Id: %@, activationIdentifier: %@", &v15, 0x20u);
  }

  [(SiriAnalyticsClientMessageStream *)self->_analyticsStream emitMessage:v12];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)instrumentActivationMessage:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 event];
  v6 = [v5 buttonInteractionDetected];

  v7 = *MEMORY[0x1E698D0A0];
  if (v6)
  {
    v8 = v7;
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_10:

      goto LABEL_11;
    }

    v9 = [v4 event];
    v10 = [v9 buttonInteractionDetected];
    v11 = [v10 buttonName];
    v12 = [v4 event];
    v13 = [v12 buttonInteractionDetected];
    v14 = [v13 buttonInteractionType] - 1;
    if (v14 > 2)
    {
      v15 = @"BUTTONINTERACTIONTYPE_UNKNOWN";
    }

    else
    {
      v15 = off_1E82F3578[v14];
    }

    v18 = [v4 activationEventIdentifier];
    v22 = 136315906;
    v23 = "[SASActivationInstrumentationSender instrumentActivationMessage:]";
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = v15;
    v28 = 2112;
    v29 = v18;
    _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #instrumentation Sending <%@, %@> for identifier %@", &v22, 0x2Au);

LABEL_9:
    goto LABEL_10;
  }

  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v16 = [v4 event];
    v11 = [v16 turnActivated];
    v17 = [v4 activationEventIdentifier];
    v22 = 136315650;
    v23 = "[SASActivationInstrumentationSender instrumentActivationMessage:]";
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = v17;
    _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #instrumentation Sending %@ for identifier %@", &v22, 0x20u);

    goto LABEL_9;
  }

LABEL_11:
  analyticsStream = self->_analyticsStream;
  v20 = [v4 event];
  -[SiriAnalyticsClientMessageStream emitMessage:timestamp:](analyticsStream, "emitMessage:timestamp:", v20, [v4 machAbsoluteTime]);

  v21 = *MEMORY[0x1E69E9840];
}

- (id)_clientEventWithActivationEventIdentifier:(id)a3
{
  v3 = MEMORY[0x1E69CE6E0];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = objc_alloc_init(MEMORY[0x1E69CE6E8]);
  v7 = [objc_alloc(MEMORY[0x1E69CF640]) initWithNSUUID:v4];

  [v6 setActivationEventId:v7];
  [v5 setEventMetadata:v6];

  return v5;
}

@end
@interface VIStreamingSession
- (VIStreamingSession)init;
- (VIStreamingSession)initWithCompatService:(id)a3;
- (id)extractSignalsWithRequest:(id)a3 error:(id *)a4;
- (id)parseWithRequest:(id)a3 error:(id *)a4;
@end

@implementation VIStreamingSession

- (VIStreamingSession)init
{
  v6.receiver = self;
  v6.super_class = VIStreamingSession;
  v2 = [(VIStreamingSession *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    compatService = v2->_compatService;
    v2->_compatService = v3;
  }

  return v2;
}

- (VIStreamingSession)initWithCompatService:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VIStreamingSession;
  v6 = [(VIStreamingSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_compatService, a3);
  }

  return v7;
}

- (id)parseWithRequest:(id)a3 error:(id *)a4
{
  compatService = self->_compatService;
  v6 = a3;
  v7 = [v6 frame];
  v8 = [v7 imageContent];
  v9 = [v6 frame];

  [v9 normalizedRegionOfInterest];
  v10 = [(VisualIntelligenceServiceCompatible *)compatService detectWithImage:v8 regionOfInterest:a4 error:?];

  v11 = VICompactMapArray(v10, &__block_literal_global_0);
  v12 = [[VIStreamingParseResult alloc] initWithDetectedObjects:v11];

  return v12;
}

VIStreamingDetectedObject *__45__VIStreamingSession_parseWithRequest_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [VIStreamingDetectedObject alloc];
  v4 = [MEMORY[0x1E696AFB0] UUID];
  [v2 boundingBox];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(VIStreamingDetectedObject *)v3 initWithObjectUUID:v4 normalizedBoundingBox:@"com.apple.argos.domain_key.book" domainKey:@"book.closed.fill" glyphName:@"result" displayLabel:v6, v8, v10, v12];

  return v13;
}

- (id)extractSignalsWithRequest:(id)a3 error:(id *)a4
{
  v4 = [VIImageRegion alloc];
  v5 = [(VIImageRegion *)v4 initWithRegionOfInterest:MEMORY[0x1E695E0F0] domainInfo:*&VIIdentityRect, unk_1ECB50860, *&qword_1ECB50868, unk_1ECB50870];
  v6 = [[VIStreamingSignalExtractionResult alloc] initWithImageRegion:v5 payload:0];

  return v6;
}

@end
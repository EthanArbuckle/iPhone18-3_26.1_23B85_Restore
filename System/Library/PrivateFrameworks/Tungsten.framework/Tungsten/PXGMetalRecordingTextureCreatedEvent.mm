@interface PXGMetalRecordingTextureCreatedEvent
+ (id)eventWithTexture:(id)a3 options:(id)a4 recordingComponent:(int64_t)a5;
- (PXGMetalRecordingTextureCreatedEvent)initWithTexture:(id)a3 options:(id)a4 recordingComponent:(int64_t)a5;
- (id)serializable;
@end

@implementation PXGMetalRecordingTextureCreatedEvent

- (id)serializable
{
  v3 = objc_alloc_init(PXGMetalRecordingTextureCreatedEventSerializable);
  v4 = [(PXGMetalRecordingMetalSpriteTexture *)self->_recordingTexture serializable];
  [(PXGMetalRecordingTextureCreatedEventSerializable *)v3 setTexture:v4];

  v5 = objc_alloc_init(PXGTextureConverterOptionsSerializable);
  [(PXGMetalRecordingTextureCreatedEventSerializable *)v3 setOptions:v5];

  p_options = &self->_options;
  v7 = *&self->_options.effectID;
  suppressContentsRect_low = LODWORD(p_options->suppressContentsRect);
  v9 = [(PXGMetalRecordingTextureCreatedEventSerializable *)v3 options];
  [v9 setTextureConverterOptions:{v7, suppressContentsRect_low}];

  return v3;
}

- (PXGMetalRecordingTextureCreatedEvent)initWithTexture:(id)a3 options:(id)a4 recordingComponent:(int64_t)a5
{
  var2 = a4.var2;
  v7 = *&a4.var0;
  v9 = a3;
  v14.receiver = self;
  v14.super_class = PXGMetalRecordingTextureCreatedEvent;
  v10 = [(PXGTungstenRecordingEvent *)&v14 initWithComponent:a5 eventName:@"textureCreated"];
  if (v10)
  {
    v11 = [[PXGMetalRecordingMetalSpriteTexture alloc] initWithTexture:v9];
    recordingTexture = v10->_recordingTexture;
    v10->_recordingTexture = v11;

    *&v10->_options.effectID = v7;
    v10->_options.suppressContentsRect = var2;
  }

  return v10;
}

+ (id)eventWithTexture:(id)a3 options:(id)a4 recordingComponent:(int64_t)a5
{
  var2 = a4.var2;
  v7 = *&a4.var0;
  v8 = a3;
  v9 = [[PXGMetalRecordingTextureCreatedEvent alloc] initWithTexture:v8 options:v7 recordingComponent:LODWORD(var2), a5];

  return v9;
}

@end
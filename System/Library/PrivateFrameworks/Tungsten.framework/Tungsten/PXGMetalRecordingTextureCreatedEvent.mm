@interface PXGMetalRecordingTextureCreatedEvent
+ (id)eventWithTexture:(id)texture options:(id)options recordingComponent:(int64_t)component;
- (PXGMetalRecordingTextureCreatedEvent)initWithTexture:(id)texture options:(id)options recordingComponent:(int64_t)component;
- (id)serializable;
@end

@implementation PXGMetalRecordingTextureCreatedEvent

- (id)serializable
{
  v3 = objc_alloc_init(PXGMetalRecordingTextureCreatedEventSerializable);
  serializable = [(PXGMetalRecordingMetalSpriteTexture *)self->_recordingTexture serializable];
  [(PXGMetalRecordingTextureCreatedEventSerializable *)v3 setTexture:serializable];

  v5 = objc_alloc_init(PXGTextureConverterOptionsSerializable);
  [(PXGMetalRecordingTextureCreatedEventSerializable *)v3 setOptions:v5];

  p_options = &self->_options;
  v7 = *&self->_options.effectID;
  suppressContentsRect_low = LODWORD(p_options->suppressContentsRect);
  options = [(PXGMetalRecordingTextureCreatedEventSerializable *)v3 options];
  [options setTextureConverterOptions:{v7, suppressContentsRect_low}];

  return v3;
}

- (PXGMetalRecordingTextureCreatedEvent)initWithTexture:(id)texture options:(id)options recordingComponent:(int64_t)component
{
  var2 = options.var2;
  v7 = *&options.var0;
  textureCopy = texture;
  v14.receiver = self;
  v14.super_class = PXGMetalRecordingTextureCreatedEvent;
  v10 = [(PXGTungstenRecordingEvent *)&v14 initWithComponent:component eventName:@"textureCreated"];
  if (v10)
  {
    v11 = [[PXGMetalRecordingMetalSpriteTexture alloc] initWithTexture:textureCopy];
    recordingTexture = v10->_recordingTexture;
    v10->_recordingTexture = v11;

    *&v10->_options.effectID = v7;
    v10->_options.suppressContentsRect = var2;
  }

  return v10;
}

+ (id)eventWithTexture:(id)texture options:(id)options recordingComponent:(int64_t)component
{
  var2 = options.var2;
  v7 = *&options.var0;
  textureCopy = texture;
  component = [[PXGMetalRecordingTextureCreatedEvent alloc] initWithTexture:textureCopy options:v7 recordingComponent:LODWORD(var2), component];

  return component;
}

@end
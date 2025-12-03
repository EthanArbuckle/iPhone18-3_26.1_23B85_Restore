@interface NeuralNetConfig
- (_TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig)init;
- (_TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig)initWithHiddenLayers:(int64_t)layers outSteps:(int64_t)steps epochs:(int64_t)epochs batchSize:(int64_t)size trainOnGpu:(BOOL)gpu;
- (int64_t)getUnknownLoiIdLabel;
@end

@implementation NeuralNetConfig

- (_TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig)initWithHiddenLayers:(int64_t)layers outSteps:(int64_t)steps epochs:(int64_t)epochs batchSize:(int64_t)size trainOnGpu:(BOOL)gpu
{
  *(&self->super.isa + OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_unknownLoiID) = -1;
  *(&self->super.isa + OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_outSteps) = steps;
  *(&self->super.isa + OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_hiddenLayerSize) = layers;
  *(&self->super.isa + OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_epochs) = epochs;
  *(&self->super.isa + OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_batchSize) = size;
  *(&self->super.isa + OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_trainOnGpu) = gpu;
  v8.receiver = self;
  v8.super_class = type metadata accessor for NeuralNetConfig();
  return [(NeuralNetConfig *)&v8 init];
}

- (int64_t)getUnknownLoiIdLabel
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0xF8);
  selfCopy = self;
  v4 = v2();

  return v4;
}

- (_TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
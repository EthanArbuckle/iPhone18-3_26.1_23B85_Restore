@interface NeuralNetConfig
- (_TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig)init;
- (_TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig)initWithHiddenLayers:(int64_t)a3 outSteps:(int64_t)a4 epochs:(int64_t)a5 batchSize:(int64_t)a6 trainOnGpu:(BOOL)a7;
- (int64_t)getUnknownLoiIdLabel;
@end

@implementation NeuralNetConfig

- (_TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig)initWithHiddenLayers:(int64_t)a3 outSteps:(int64_t)a4 epochs:(int64_t)a5 batchSize:(int64_t)a6 trainOnGpu:(BOOL)a7
{
  *(&self->super.isa + OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_unknownLoiID) = -1;
  *(&self->super.isa + OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_outSteps) = a4;
  *(&self->super.isa + OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_hiddenLayerSize) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_epochs) = a5;
  *(&self->super.isa + OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_batchSize) = a6;
  *(&self->super.isa + OBJC_IVAR____TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig_trainOnGpu) = a7;
  v8.receiver = self;
  v8.super_class = type metadata accessor for NeuralNetConfig();
  return [(NeuralNetConfig *)&v8 init];
}

- (int64_t)getUnknownLoiIdLabel
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0xF8);
  v3 = self;
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
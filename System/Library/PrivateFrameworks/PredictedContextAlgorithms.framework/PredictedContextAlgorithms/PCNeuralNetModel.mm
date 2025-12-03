@interface PCNeuralNetModel
- (_TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel)init;
- (id)decodeLabelWithIndex:(int64_t)index;
- (id)getConfig;
- (id)getEncodedModel;
- (id)initFrom:(id)from;
- (id)predictFromTensorWithXPredict:(id)predict xPredictMatrix:(id)matrix timesteps:(int64_t)timesteps;
- (int64_t)trainFromTensorsWithDatasetX:(id)x datasetY:(id)y timesteps:(int64_t)timesteps;
- (void)encodeWithLabelEncoderWithArray:(NSArray *)array completionHandler:(id)handler;
- (void)fitLabelEncoderWithArray:(NSArray *)array completionHandler:(id)handler;
- (void)interruptTraining;
@end

@implementation PCNeuralNetModel

- (id)initFrom:(id)from
{
  fromCopy = from;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  return PCNeuralNetModel.init(from:)(v4, v6);
}

- (void)interruptTraining
{
  selfCopy = self;
  PCNeuralNetModel.interruptTraining()();
}

- (id)getConfig
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0xA8);
  selfCopy = self;
  v4 = v2();

  return v4;
}

- (id)getEncodedModel
{
  v3 = type metadata accessor for JSONEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  selfCopy = self;
  JSONEncoder.init()();
  type metadata accessor for PCNeuralNetModel();
  lazy protocol witness table accessor for type PCNeuralNetModel and conformance PCNeuralNetModel(&lazy protocol witness table cache variable for type PCNeuralNetModel and conformance PCNeuralNetModel, 255, type metadata accessor for PCNeuralNetModel);
  v7 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v9 = v8;

  v10.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v7, v9);

  return v10.super.isa;
}

- (void)encodeWithLabelEncoderWithArray:(NSArray *)array completionHandler:(id)handler
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = array;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &async function pointer to partial apply for @objc closure #1 in PCNeuralNetModel.encodeWithLabelEncoder(array:);
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &_sIeghH_IeAgH_TRTA_83Tu;
  v14[5] = v13;
  arrayCopy = array;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTA_88Tu, v14);
}

- (void)fitLabelEncoderWithArray:(NSArray *)array completionHandler:(id)handler
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = array;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &async function pointer to partial apply for @objc closure #1 in PCNeuralNetModel.fitLabelEncoder(array:);
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &_sIeghH_IeAgH_TRTATu;
  v14[5] = v13;
  arrayCopy = array;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTATu, v14);
}

- (id)decodeLabelWithIndex:(int64_t)index
{
  selfCopy = self;
  v5 = PCNeuralNetModel.decodeLabel(index:)(index);

  v6 = MEMORY[0x1D38653C0](v5.value._countAndFlagsBits, v5.value._object);

  return v6;
}

- (int64_t)trainFromTensorsWithDatasetX:(id)x datasetY:(id)y timesteps:(int64_t)timesteps
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  PCNeuralNetModel.trainFromTensors(datasetX:datasetY:timesteps:)(v7, v8, timesteps);
  v11 = v10;

  return v11;
}

- (id)predictFromTensorWithXPredict:(id)predict xPredictMatrix:(id)matrix timesteps:(int64_t)timesteps
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  specialized PCNeuralNetModel.predictFromTensor(xPredict:xPredictMatrix:timesteps:)(v7, timesteps);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySaySfGGMd, &_sSaySaySfGGMR);
  v9.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v9.super.isa;
}

- (_TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
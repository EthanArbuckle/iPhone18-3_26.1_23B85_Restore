@interface VATConfiguration
+ (OS_os_log)logger;
- (DecoderConfig)decoder;
- (FeatureExtractorConfig)featureExtractor;
- (NSString)description;
- (NeuralNetworkConfig)neuralNetwork;
- (RuntimeConfig)runtime;
- (SecondPassConfig)secondPass;
- (VATConfiguration)initWithFilename:(id)a3 error:(id *)a4;
- (void)_replaceModelPathWithCustomModelPathForTestWithPrefix:(id)a3;
- (void)setDecoder:(id)a3;
- (void)setFeatureExtractor:(id)a3;
- (void)setNeuralNetwork:(id)a3;
- (void)setRuntime:(id)a3;
- (void)setSecondPass:(id)a3;
@end

@implementation VATConfiguration

+ (OS_os_log)logger
{
  if (qword_280888690 != -1)
  {
    swift_once();
  }

  v3 = qword_280893A90;

  return v3;
}

- (NeuralNetworkConfig)neuralNetwork
{
  v3 = OBJC_IVAR___VATConfiguration_neuralNetwork;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setNeuralNetwork:(id)a3
{
  v5 = OBJC_IVAR___VATConfiguration_neuralNetwork;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (FeatureExtractorConfig)featureExtractor
{
  v3 = OBJC_IVAR___VATConfiguration_featureExtractor;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setFeatureExtractor:(id)a3
{
  v5 = OBJC_IVAR___VATConfiguration_featureExtractor;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (DecoderConfig)decoder
{
  v3 = OBJC_IVAR___VATConfiguration_decoder;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDecoder:(id)a3
{
  v5 = OBJC_IVAR___VATConfiguration_decoder;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (SecondPassConfig)secondPass
{
  v3 = OBJC_IVAR___VATConfiguration_secondPass;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSecondPass:(id)a3
{
  v5 = OBJC_IVAR___VATConfiguration_secondPass;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (RuntimeConfig)runtime
{
  v3 = OBJC_IVAR___VATConfiguration_runtime;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setRuntime:(id)a3
{
  v5 = OBJC_IVAR___VATConfiguration_runtime;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (VATConfiguration)initWithFilename:(id)a3 error:(id *)a4
{
  if (a3)
  {
    v4 = sub_27237782C();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return VATConfiguration.init(filename:)(v4, v5);
}

- (void)_replaceModelPathWithCustomModelPathForTestWithPrefix:(id)a3
{
  v4 = sub_27237782C();
  v6 = v5;
  v7 = MEMORY[0x277D85000];
  v8 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x78);
  v14 = self;
  v9 = v8();
  v10 = (*((*v7 & *v9) + 0x68))();
  v12 = v11;

  v13 = v8();

  MEMORY[0x2743C4AD0](47, 0xE100000000000000);

  MEMORY[0x2743C4AD0](v10, v12);

  (*((*v7 & *v13) + 0x70))(v4, v6);
}

- (NSString)description
{
  v2 = self;
  sub_272289D78();

  v3 = sub_2723777FC();

  return v3;
}

@end
@interface VSNeuralTTSUtils
+ (BOOL)hasCompactNeuralFallback:(id)fallback;
+ (BOOL)hasOTAANEModel:(id)model;
+ (BOOL)isANEModelCompiled:(id)compiled;
+ (BOOL)isNeuralFallbackCondition;
+ (BOOL)isNeuralVoiceReady:(id)ready;
+ (BOOL)shouldUseNeuralVoice:(id)voice;
+ (void)compileANEModel:(id)model;
@end

@implementation VSNeuralTTSUtils

+ (void)compileANEModel:(id)model
{
  v7 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  uTF8String = [modelCopy UTF8String];
  NeuralTTSUtils::compile_ane_model(uTF8String, v5);

  v6 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isANEModelCompiled:(id)compiled
{
  v9 = *MEMORY[0x277D85DE8];
  compiledCopy = compiled;
  uTF8String = [compiledCopy UTF8String];
  is_ane_model_compiled = NeuralTTSUtils::is_ane_model_compiled(uTF8String, v5);

  v7 = *MEMORY[0x277D85DE8];
  return is_ane_model_compiled;
}

+ (BOOL)hasOTAANEModel:(id)model
{
  v9 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  uTF8String = [modelCopy UTF8String];
  has_ota_ane_model = NeuralTTSUtils::has_ota_ane_model(uTF8String, v5);

  v7 = *MEMORY[0x277D85DE8];
  return has_ota_ane_model;
}

+ (BOOL)isNeuralFallbackCondition
{
  v4 = *MEMORY[0x277D85DE8];
  result = NeuralTTSUtils::check_thermal_critical_conditions(self);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

+ (BOOL)hasCompactNeuralFallback:(id)fallback
{
  v9 = *MEMORY[0x277D85DE8];
  fallbackCopy = fallback;
  uTF8String = [fallbackCopy UTF8String];
  has_compact_neural_fallback = NeuralTTSUtils::has_compact_neural_fallback(uTF8String, v5);

  v7 = *MEMORY[0x277D85DE8];
  return has_compact_neural_fallback;
}

+ (BOOL)shouldUseNeuralVoice:(id)voice
{
  v9 = *MEMORY[0x277D85DE8];
  voiceCopy = voice;
  uTF8String = [voiceCopy UTF8String];
  should_use_neural_voice = NeuralTTSUtils::should_use_neural_voice(uTF8String, v5);

  v7 = *MEMORY[0x277D85DE8];
  return should_use_neural_voice;
}

+ (BOOL)isNeuralVoiceReady:(id)ready
{
  v9 = *MEMORY[0x277D85DE8];
  readyCopy = ready;
  uTF8String = [readyCopy UTF8String];
  is_neural_voice_ready = NeuralTTSUtils::is_neural_voice_ready(uTF8String, v5);

  v7 = *MEMORY[0x277D85DE8];
  return is_neural_voice_ready;
}

@end
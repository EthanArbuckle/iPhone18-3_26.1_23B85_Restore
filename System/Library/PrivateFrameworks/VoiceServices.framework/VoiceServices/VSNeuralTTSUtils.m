@interface VSNeuralTTSUtils
+ (BOOL)hasCompactNeuralFallback:(id)a3;
+ (BOOL)hasOTAANEModel:(id)a3;
+ (BOOL)isANEModelCompiled:(id)a3;
+ (BOOL)isNeuralFallbackCondition;
+ (BOOL)isNeuralVoiceReady:(id)a3;
+ (BOOL)shouldUseNeuralVoice:(id)a3;
+ (void)compileANEModel:(id)a3;
@end

@implementation VSNeuralTTSUtils

+ (void)compileANEModel:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 UTF8String];
  NeuralTTSUtils::compile_ane_model(v4, v5);

  v6 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isANEModelCompiled:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 UTF8String];
  is_ane_model_compiled = NeuralTTSUtils::is_ane_model_compiled(v4, v5);

  v7 = *MEMORY[0x277D85DE8];
  return is_ane_model_compiled;
}

+ (BOOL)hasOTAANEModel:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 UTF8String];
  has_ota_ane_model = NeuralTTSUtils::has_ota_ane_model(v4, v5);

  v7 = *MEMORY[0x277D85DE8];
  return has_ota_ane_model;
}

+ (BOOL)isNeuralFallbackCondition
{
  v4 = *MEMORY[0x277D85DE8];
  result = NeuralTTSUtils::check_thermal_critical_conditions(a1);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

+ (BOOL)hasCompactNeuralFallback:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 UTF8String];
  has_compact_neural_fallback = NeuralTTSUtils::has_compact_neural_fallback(v4, v5);

  v7 = *MEMORY[0x277D85DE8];
  return has_compact_neural_fallback;
}

+ (BOOL)shouldUseNeuralVoice:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 UTF8String];
  should_use_neural_voice = NeuralTTSUtils::should_use_neural_voice(v4, v5);

  v7 = *MEMORY[0x277D85DE8];
  return should_use_neural_voice;
}

+ (BOOL)isNeuralVoiceReady:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 UTF8String];
  is_neural_voice_ready = NeuralTTSUtils::is_neural_voice_ready(v4, v5);

  v7 = *MEMORY[0x277D85DE8];
  return is_neural_voice_ready;
}

@end
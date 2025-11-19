@interface SiriTTSNeuralUtils
+ (BOOL)compileANEModel:(id)a3 error:(id *)a4;
+ (BOOL)hasCompactNeuralFallback:(id)a3;
+ (BOOL)isANEModelCompiled:(id)a3;
+ (BOOL)isNeuralVoiceReady:(id)a3;
+ (BOOL)shouldUseNeuralVoice:(id)a3;
+ (float)currentSampleRate:(id)a3;
@end

@implementation SiriTTSNeuralUtils

+ (BOOL)compileANEModel:(id)a3 error:(id *)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 UTF8String];
  NeuralTTSUtils::compile_ane_model(v5, v6);

  v7 = *MEMORY[0x1E69E9840];
  return 1;
}

+ (BOOL)isANEModelCompiled:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 UTF8String];
  is_ane_model_compiled = NeuralTTSUtils::is_ane_model_compiled(v4, v5);

  v7 = *MEMORY[0x1E69E9840];
  return is_ane_model_compiled;
}

+ (float)currentSampleRate:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 UTF8String];
  NeuralTTSUtils::current_model_sample_rate(v4, v5);
  v7 = v6;

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (BOOL)shouldUseNeuralVoice:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 UTF8String];
  should_use_neural_voice = NeuralTTSUtils::should_use_neural_voice(v4, v5);

  v7 = *MEMORY[0x1E69E9840];
  return should_use_neural_voice;
}

+ (BOOL)hasCompactNeuralFallback:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 UTF8String];
  has_compact_neural_fallback = NeuralTTSUtils::has_compact_neural_fallback(v4, v5);

  v7 = *MEMORY[0x1E69E9840];
  return has_compact_neural_fallback;
}

+ (BOOL)isNeuralVoiceReady:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 UTF8String];
  is_neural_voice_ready = NeuralTTSUtils::is_neural_voice_ready(v4, v5);

  v7 = *MEMORY[0x1E69E9840];
  return is_neural_voice_ready;
}

@end
@interface SiriTTSNeuralUtils
+ (BOOL)compileANEModel:(id)model error:(id *)error;
+ (BOOL)hasCompactNeuralFallback:(id)fallback;
+ (BOOL)isANEModelCompiled:(id)compiled;
+ (BOOL)isNeuralVoiceReady:(id)ready;
+ (BOOL)shouldUseNeuralVoice:(id)voice;
+ (float)currentSampleRate:(id)rate;
@end

@implementation SiriTTSNeuralUtils

+ (BOOL)compileANEModel:(id)model error:(id *)error
{
  v9 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  uTF8String = [modelCopy UTF8String];
  NeuralTTSUtils::compile_ane_model(uTF8String, v6);

  v7 = *MEMORY[0x1E69E9840];
  return 1;
}

+ (BOOL)isANEModelCompiled:(id)compiled
{
  v9 = *MEMORY[0x1E69E9840];
  compiledCopy = compiled;
  uTF8String = [compiledCopy UTF8String];
  is_ane_model_compiled = NeuralTTSUtils::is_ane_model_compiled(uTF8String, v5);

  v7 = *MEMORY[0x1E69E9840];
  return is_ane_model_compiled;
}

+ (float)currentSampleRate:(id)rate
{
  v10 = *MEMORY[0x1E69E9840];
  rateCopy = rate;
  uTF8String = [rateCopy UTF8String];
  NeuralTTSUtils::current_model_sample_rate(uTF8String, v5);
  v7 = v6;

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (BOOL)shouldUseNeuralVoice:(id)voice
{
  v9 = *MEMORY[0x1E69E9840];
  voiceCopy = voice;
  uTF8String = [voiceCopy UTF8String];
  should_use_neural_voice = NeuralTTSUtils::should_use_neural_voice(uTF8String, v5);

  v7 = *MEMORY[0x1E69E9840];
  return should_use_neural_voice;
}

+ (BOOL)hasCompactNeuralFallback:(id)fallback
{
  v9 = *MEMORY[0x1E69E9840];
  fallbackCopy = fallback;
  uTF8String = [fallbackCopy UTF8String];
  has_compact_neural_fallback = NeuralTTSUtils::has_compact_neural_fallback(uTF8String, v5);

  v7 = *MEMORY[0x1E69E9840];
  return has_compact_neural_fallback;
}

+ (BOOL)isNeuralVoiceReady:(id)ready
{
  v9 = *MEMORY[0x1E69E9840];
  readyCopy = ready;
  uTF8String = [readyCopy UTF8String];
  is_neural_voice_ready = NeuralTTSUtils::is_neural_voice_ready(uTF8String, v5);

  v7 = *MEMORY[0x1E69E9840];
  return is_neural_voice_ready;
}

@end
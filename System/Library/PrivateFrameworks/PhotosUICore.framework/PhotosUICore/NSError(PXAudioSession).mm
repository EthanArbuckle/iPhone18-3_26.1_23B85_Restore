@interface NSError(PXAudioSession)
+ (id)px_audioSessionErrorWithCode:()PXAudioSession underlyingError:;
+ (id)px_audioSessionErrorWithCode:()PXAudioSession userInfo:;
@end

@implementation NSError(PXAudioSession)

+ (id)px_audioSessionErrorWithCode:()PXAudioSession userInfo:
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = a4;
  v7 = [[v5 alloc] initWithDomain:@"PXAudioSessionErrorDomain" code:a3 userInfo:v6];

  return v7;
}

+ (id)px_audioSessionErrorWithCode:()PXAudioSession underlyingError:
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v6 = a4;
  v7 = [v5 alloc];
  v11 = *MEMORY[0x1E696AA08];
  v12[0] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v9 = [v7 initWithDomain:@"PXAudioSessionErrorDomain" code:a3 userInfo:v8];

  return v9;
}

@end
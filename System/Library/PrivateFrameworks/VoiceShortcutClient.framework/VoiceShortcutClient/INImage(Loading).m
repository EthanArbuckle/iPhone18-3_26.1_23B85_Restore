@interface INImage(Loading)
- (void)retrieveImageDataWithCompletion:()Loading;
@end

@implementation INImage(Loading)

- (void)retrieveImageDataWithCompletion:()Loading
{
  v4 = a3;
  if ([a1 _isSystem])
  {
    v4[2](v4, a1, 0);
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __52__INImage_Loading__retrieveImageDataWithCompletion___block_invoke;
    v5[3] = &unk_1E7B02718;
    v6 = v4;
    [a1 _retrieveImageDataWithReply:v5];
  }
}

@end
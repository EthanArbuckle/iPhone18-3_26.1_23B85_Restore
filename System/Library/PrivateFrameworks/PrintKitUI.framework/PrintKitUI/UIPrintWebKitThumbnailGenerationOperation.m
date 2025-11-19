@interface UIPrintWebKitThumbnailGenerationOperation
- (UIPrintWebKitThumbnailGenerationOperation)initWithPagesController:(id)a3;
- (void)main;
@end

@implementation UIPrintWebKitThumbnailGenerationOperation

- (UIPrintWebKitThumbnailGenerationOperation)initWithPagesController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UIPrintWebKitThumbnailGenerationOperation;
  v5 = [(NSBlockOperation *)&v8 init];
  if (v5)
  {
    v6 = [v4 webKitThumbnailGenerationThread];
    [(UIPrintWebKitThumbnailGenerationOperation *)v5 setCurrentWebKitThumbnailGenerationThread:v6];
  }

  return v5;
}

- (void)main
{
  v3 = [(UIPrintWebKitThumbnailGenerationOperation *)self currentWebKitThumbnailGenerationThread];
  if (v3)
  {
    v4 = v3;
    do
    {
      v5 = [(UIPrintWebKitThumbnailGenerationOperation *)self currentWebKitThumbnailGenerationThread];
      v6 = [v5 isFinished];

      if (v6)
      {
        break;
      }

      usleep(0);
      v4 = [(UIPrintWebKitThumbnailGenerationOperation *)self currentWebKitThumbnailGenerationThread];
    }

    while (v4);
  }

  if (([(UIPrintWebKitThumbnailGenerationOperation *)self isCancelled]& 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = UIPrintWebKitThumbnailGenerationOperation;
    [(NSBlockOperation *)&v7 main];
  }
}

@end
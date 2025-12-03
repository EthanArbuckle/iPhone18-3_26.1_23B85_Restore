@interface UIPrintWebKitThumbnailGenerationOperation
- (UIPrintWebKitThumbnailGenerationOperation)initWithPagesController:(id)controller;
- (void)main;
@end

@implementation UIPrintWebKitThumbnailGenerationOperation

- (UIPrintWebKitThumbnailGenerationOperation)initWithPagesController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = UIPrintWebKitThumbnailGenerationOperation;
  v5 = [(NSBlockOperation *)&v8 init];
  if (v5)
  {
    webKitThumbnailGenerationThread = [controllerCopy webKitThumbnailGenerationThread];
    [(UIPrintWebKitThumbnailGenerationOperation *)v5 setCurrentWebKitThumbnailGenerationThread:webKitThumbnailGenerationThread];
  }

  return v5;
}

- (void)main
{
  currentWebKitThumbnailGenerationThread = [(UIPrintWebKitThumbnailGenerationOperation *)self currentWebKitThumbnailGenerationThread];
  if (currentWebKitThumbnailGenerationThread)
  {
    currentWebKitThumbnailGenerationThread3 = currentWebKitThumbnailGenerationThread;
    do
    {
      currentWebKitThumbnailGenerationThread2 = [(UIPrintWebKitThumbnailGenerationOperation *)self currentWebKitThumbnailGenerationThread];
      isFinished = [currentWebKitThumbnailGenerationThread2 isFinished];

      if (isFinished)
      {
        break;
      }

      usleep(0);
      currentWebKitThumbnailGenerationThread3 = [(UIPrintWebKitThumbnailGenerationOperation *)self currentWebKitThumbnailGenerationThread];
    }

    while (currentWebKitThumbnailGenerationThread3);
  }

  if (([(UIPrintWebKitThumbnailGenerationOperation *)self isCancelled]& 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = UIPrintWebKitThumbnailGenerationOperation;
    [(NSBlockOperation *)&v7 main];
  }
}

@end
@interface PNPPencilMovieView
@end

@implementation PNPPencilMovieView

void __61___PNPPencilMovieView_completeRevolutionWithCompletionBlock___block_invoke(uint64_t a1)
{
  memset(&v12, 0, sizeof(v12));
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    [v2 duration];
  }

  time = v12;
  Seconds = CMTimeGetSeconds(&time);
  memset(&time, 0, sizeof(time));
  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (v4)
  {
    [v4 currentTime];
  }

  v10 = time;
  v5 = CMTimeGetSeconds(&v10);
  if (v5 >= Seconds * 0.25)
  {
    v6 = Seconds - v5;
  }

  else
  {
    v6 = -v5;
  }

  v7 = dispatch_time(0, (fmin((Seconds * 0.25 + v6) * (1.0 / *(a1 + 48)), 2.4) * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61___PNPPencilMovieView_completeRevolutionWithCompletionBlock___block_invoke_2;
  block[3] = &unk_279A0A128;
  v9 = *(a1 + 32);
  dispatch_after(v7, MEMORY[0x277D85CD0], block);
}

@end
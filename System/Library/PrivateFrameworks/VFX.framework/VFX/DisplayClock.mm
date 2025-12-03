@interface DisplayClock
- (void)_applicationDidEnterBackground:(id)background;
- (void)_applicationWillEnterForeground:(id)foreground;
@end

@implementation DisplayClock

- (void)_applicationDidEnterBackground:(id)background
{
  v4 = sub_1AFDFBD08();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFBCF8();
  v9 = *self->displayLink;

  if (v9)
  {
    isPaused = [v9 isPaused];
    v11 = *self->displayLink;
  }

  else
  {
    v11 = 0;
    isPaused = 1;
  }

  self->_pausedOnBackgrounding[0] = isPaused;
  [v11 setPaused_];

  (*(v5 + 8))(v8, v4);
}

- (void)_applicationWillEnterForeground:(id)foreground
{
  v4 = sub_1AFDFBD08();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFBCF8();
  if ((self->_pausedOnBackgrounding[0] & 1) == 0)
  {
    v9 = *self->displayLink;
    if (v9)
    {

      if (![v9 isPaused])
      {
LABEL_7:

        goto LABEL_8;
      }

      v10 = *self->displayLink;
    }

    else
    {

      v10 = 0;
    }

    [v10 setPaused_];
    goto LABEL_7;
  }

LABEL_8:
  (*(v5 + 8))(v8, v4);
}

@end
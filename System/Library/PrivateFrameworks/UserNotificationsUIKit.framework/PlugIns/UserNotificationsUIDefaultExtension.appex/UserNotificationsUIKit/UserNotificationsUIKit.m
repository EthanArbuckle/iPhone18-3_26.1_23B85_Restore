void sub_1000011BC(id a1)
{
  qword_1000115E0 = os_log_create("com.apple.UserNotificationsUI", "DefaultContentExtensionAudio");

  _objc_release_x1();
}

void sub_1000014B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000014E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [v3 currentTime];
      [v2 playerController:v3 didChangeToCurrentTime:?];
    }

    WeakRetained = v3;
  }
}

void sub_100002858(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100003858(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained playButton];
    [v2 setAlpha:0.0];

    v3 = [v5 pauseButton];
    [v3 setHidden:0];

    v4 = [v5 pauseButton];
    [v4 setAlpha:1.0];

    WeakRetained = v5;
  }
}

void sub_1000038F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained playButton];
    [v2 setHidden:1];

    WeakRetained = v3;
  }
}

void sub_100003950(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained playButton];
    [v2 setHidden:0];

    v3 = [v5 playButton];
    [v3 setAlpha:1.0];

    v4 = [v5 pauseButton];
    [v4 setAlpha:0.0];

    WeakRetained = v5;
  }
}

void sub_1000039E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained pauseButton];
    [v2 setHidden:1];

    WeakRetained = v3;
  }
}

void sub_1000046F0(id a1)
{
  qword_1000115F0 = os_log_create("com.apple.UserNotificationsUI", "DefaultContentExtension");

  _objc_release_x1();
}
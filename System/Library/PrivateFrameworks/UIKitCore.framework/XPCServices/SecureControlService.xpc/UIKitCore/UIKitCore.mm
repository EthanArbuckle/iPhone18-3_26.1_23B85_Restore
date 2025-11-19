double sub_1000014EC(uint64_t a1, double a2, double a3, double a4)
{
  v4 = *(a1 + 32);
  v5 = a2 + a4 + 4.0;
  result = fmax(a2, a4);
  if (v4 != 1)
  {
    return v5;
  }

  return result;
}

uint64_t start()
{
  v0 = objc_alloc_init(_UISecureControlService);
  v1 = +[NSXPCListener serviceListener];
  [v1 setDelegate:v0];
  [v1 resume];

  return 0;
}
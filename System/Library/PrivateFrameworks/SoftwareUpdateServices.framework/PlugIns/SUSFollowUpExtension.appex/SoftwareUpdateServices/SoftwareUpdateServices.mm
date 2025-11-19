void sub_1000011DC(id a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_alloc_init(SUManagerClient);
  if (location[0])
  {
    [location[0] installUpdate:&stru_1000043F0];
  }

  else
  {
    SULogInfo();
  }

  objc_storeStrong(location, 0);
}

void sub_100001254(id a1, BOOL a2, NSError *a3)
{
  v5 = a1;
  v4 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  SULogInfo();
  objc_storeStrong(&location, 0);
}
@interface SAProximateProcess
@end

@implementation SAProximateProcess

uint64_t __44__SAProximateProcess_displayStringWithPids___block_invoke(int a1, _DWORD *self, _DWORD *a3)
{
  if (self)
  {
    v4 = self[2];
    if (a3)
    {
LABEL_3:
      v5 = a3[2];
      goto LABEL_4;
    }
  }

  else
  {
    v4 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
LABEL_4:
  if (v4 < v5)
  {
    return 1;
  }

  if (self)
  {
    v7 = self[2];
    if (a3)
    {
LABEL_8:
      v8 = a3[2];
      goto LABEL_9;
    }
  }

  else
  {
    v7 = 0;
    if (a3)
    {
      goto LABEL_8;
    }
  }

  v8 = 0;
LABEL_9:
  if (v7 > v8)
  {
    return -1;
  }

  if (self)
  {
    Property = objc_getProperty(self, self, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v11 = Property;
  if (a3)
  {
    v12 = objc_getProperty(a3, v10, 16, 1);
  }

  else
  {
    v12 = 0;
  }

  v13 = [v11 compare:v12 options:577];

  return v13;
}

@end
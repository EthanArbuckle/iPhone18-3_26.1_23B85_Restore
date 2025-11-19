@interface UIDeviceNativeUserInterfaceIdiom
@end

@implementation UIDeviceNativeUserInterfaceIdiom

void ___UIDeviceNativeUserInterfaceIdiom_block_invoke()
{
  qword_1ED49E780 = -1;
  v5 = +[_UIDeviceInitialDeviceConfigurationLoader sharedLoader];
  v0 = [v5 initialDeviceContext];
  v1 = v0;
  if (!v0)
  {
    goto LABEL_12;
  }

  v2 = [v0 deviceInfoIntegerValueForKey:*MEMORY[0x1E69DECC0]] - 1;
  if (v2 < 0xB)
  {
LABEL_14:
    qword_1ED49E780 = v2;
LABEL_15:
    if (v2 == 4)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  qword_1ED49E780 = -1;
  v3 = [v1 deviceInfoIntegerValueForKey:*MEMORY[0x1E69DECB0]];
  if (v3 > 1)
  {
    switch(v3)
    {
      case 2:
        v4 = 1;
        goto LABEL_18;
      case 4:
LABEL_21:
        qword_1ED49E780 = 4;
        goto LABEL_22;
      case 3:
        v4 = 2;
        goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (v3 >= 2)
  {
    if (v3 == -1)
    {
      qword_1ED49E780 = -1;
LABEL_13:
      v2 = _UIDeviceNativeUserInterfaceIdiomIgnoringClassic();
      goto LABEL_14;
    }

LABEL_12:
    v2 = qword_1ED49E780;
    if (qword_1ED49E780 != -1)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v4 = 0;
LABEL_18:
  qword_1ED49E780 = v4;
LABEL_19:
  if (+[UIDevice _isWatch](UIDevice, "_isWatch") || +[UIDevice _isWatchCompanion])
  {
    goto LABEL_21;
  }

LABEL_22:
}

@end
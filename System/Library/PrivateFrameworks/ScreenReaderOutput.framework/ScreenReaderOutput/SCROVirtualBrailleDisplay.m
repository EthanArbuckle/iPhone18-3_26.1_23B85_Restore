@interface SCROVirtualBrailleDisplay
+ (id)systemDisplay;
- (SCROVirtualBrailleDisplay)initWithMainSize:(int64_t)a3;
- (id)_initWithMainSize:(int64_t)a3 ioElement:(id)a4;
- (void)pressKeyChord:(unint64_t)a3;
- (void)pressPanLeft;
- (void)pressPanRight;
- (void)pressRouterWithIndex:(unint64_t)a3 withSpace:(BOOL)a4;
@end

@implementation SCROVirtualBrailleDisplay

+ (id)systemDisplay
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SCROVirtualBrailleDisplay_systemDisplay__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (systemDisplay_onceToken != -1)
  {
    dispatch_once(&systemDisplay_onceToken, block);
  }

  v2 = systemDisplay__systemDisplay;

  return v2;
}

void __42__SCROVirtualBrailleDisplay_systemDisplay__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v4 = +[SCROVirtualIOElement systemElement];
  v2 = [v1 _initWithMainSize:1 ioElement:v4];
  v3 = systemDisplay__systemDisplay;
  systemDisplay__systemDisplay = v2;
}

- (SCROVirtualBrailleDisplay)initWithMainSize:(int64_t)a3
{
  v5 = objc_opt_new();
  v6 = [(SCROVirtualBrailleDisplay *)self _initWithMainSize:a3 ioElement:v5];

  return v6;
}

- (id)_initWithMainSize:(int64_t)a3 ioElement:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (a3 <= 0)
  {
    v7 = _SCROD_LOG();
    if (os_log_type_enabled(&v7->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v20 = a3;
      _os_log_impl(&dword_26490B000, &v7->super, OS_LOG_TYPE_DEFAULT, "Failed to create a virtual display: mainSize is nonpositive (%ld).", buf, 0xCu);
    }

    v15 = 0;
  }

  else
  {
    v7 = [[SCROVirtualBrailleDriver alloc] initWithMainSize:a3 delegate:self];
    v8 = +[SCROBrailleDisplayManager sharedManager];
    v18.receiver = self;
    v18.super_class = SCROVirtualBrailleDisplay;
    v9 = [(SCROBrailleDisplay *)&v18 _initWithDriver:v7 driverIdentifier:@"com.apple.scrod.braille.driver.generic.hid" ioElement:v6 delegate:v8];

    if (v9)
    {
      v10 = objc_opt_new();
      v11 = a3;
      do
      {
        [v10 appendString:@"⠀"];
        --v11;
      }

      while (v11);
      v12 = *(v9 + 36);
      *(v9 + 36) = v10;
      v13 = v10;

      *(v9 + 35) = a3;
      objc_storeStrong(v9 + 37, v7);

      v14 = _SCROD_LOG();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v20 = a3;
        _os_log_impl(&dword_26490B000, v14, OS_LOG_TYPE_DEFAULT, "Created a virtual display with main size: %ld", buf, 0xCu);
      }
    }

    self = v9;
    v15 = self;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)pressPanLeft
{
  [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueuePan:1 down:1];
  virtualDriver = self->_virtualDriver;

  [(SCROVirtualBrailleDriver *)virtualDriver enqueuePan:1 down:0];
}

- (void)pressPanRight
{
  [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueuePan:0 down:1];
  virtualDriver = self->_virtualDriver;

  [(SCROVirtualBrailleDriver *)virtualDriver enqueuePan:0 down:0];
}

- (void)pressKeyChord:(unint64_t)a3
{
  if (a3)
  {
    v4 = a3;
    if ((a3 & 2) != 0)
    {
      [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueDot:1 down:1];
      if ((v4 & 4) == 0)
      {
LABEL_4:
        if ((v4 & 8) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_26;
      }
    }

    else if ((a3 & 4) == 0)
    {
      goto LABEL_4;
    }

    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueDot:2 down:1];
    if ((v4 & 8) == 0)
    {
LABEL_5:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_27;
    }

LABEL_26:
    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueDot:3 down:1];
    if ((v4 & 0x10) == 0)
    {
LABEL_6:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_28;
    }

LABEL_27:
    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueDot:4 down:1];
    if ((v4 & 0x20) == 0)
    {
LABEL_7:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_29;
    }

LABEL_28:
    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueDot:5 down:1];
    if ((v4 & 0x40) == 0)
    {
LABEL_8:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_30;
    }

LABEL_29:
    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueDot:6 down:1];
    if ((v4 & 0x80) == 0)
    {
LABEL_9:
      if ((v4 & 0x100) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_31;
    }

LABEL_30:
    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueDot:7 down:1];
    if ((v4 & 0x100) == 0)
    {
LABEL_10:
      if ((v4 & 0x200) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_32;
    }

LABEL_31:
    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueDot:8 down:1];
    if ((v4 & 0x200) == 0)
    {
LABEL_11:
      if ((v4 & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_33;
    }

LABEL_32:
    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueSpaceWithDown:1];
    if ((v4 & 2) == 0)
    {
LABEL_12:
      if ((v4 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_34;
    }

LABEL_33:
    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueDot:1 down:0];
    if ((v4 & 4) == 0)
    {
LABEL_13:
      if ((v4 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_35;
    }

LABEL_34:
    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueDot:2 down:0];
    if ((v4 & 8) == 0)
    {
LABEL_14:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_36;
    }

LABEL_35:
    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueDot:3 down:0];
    if ((v4 & 0x10) == 0)
    {
LABEL_15:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_37;
    }

LABEL_36:
    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueDot:4 down:0];
    if ((v4 & 0x20) == 0)
    {
LABEL_16:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_38;
    }

LABEL_37:
    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueDot:5 down:0];
    if ((v4 & 0x40) == 0)
    {
LABEL_17:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_39;
    }

LABEL_38:
    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueDot:6 down:0];
    if ((v4 & 0x80) == 0)
    {
LABEL_18:
      if ((v4 & 0x100) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_40;
    }

LABEL_39:
    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueDot:7 down:0];
    if ((v4 & 0x100) == 0)
    {
LABEL_19:
      if ((v4 & 0x200) == 0)
      {
        return;
      }

LABEL_41:
      virtualDriver = self->_virtualDriver;

      [(SCROVirtualBrailleDriver *)virtualDriver enqueueSpaceWithDown:0];
      return;
    }

LABEL_40:
    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueDot:8 down:0];
    if ((v4 & 0x200) == 0)
    {
      return;
    }

    goto LABEL_41;
  }

  v5 = self->_virtualDriver;

  [(SCROVirtualBrailleDriver *)v5 enqueueForceTranslate];
}

- (void)pressRouterWithIndex:(unint64_t)a3 withSpace:(BOOL)a4
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_mainSize <= a3)
  {
    v9 = _SCROD_LOG();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      mainSize = self->_mainSize;
      v12 = 134218240;
      v13 = a3;
      v14 = 2048;
      v15 = mainSize;
      _os_log_impl(&dword_26490B000, v9, OS_LOG_TYPE_DEFAULT, "Virtual display: router index (%ld) out of bound (%ld)", &v12, 0x16u);
    }

    goto LABEL_11;
  }

  v6 = a4;
  if (a4)
  {
    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueSpaceWithDown:1];
  }

  [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueRouter:a3 down:1];
  [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueRouter:a3 down:0];
  if (!v6)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  virtualDriver = self->_virtualDriver;
  v8 = *MEMORY[0x277D85DE8];

  [(SCROVirtualBrailleDriver *)virtualDriver enqueueSpaceWithDown:0];
}

@end
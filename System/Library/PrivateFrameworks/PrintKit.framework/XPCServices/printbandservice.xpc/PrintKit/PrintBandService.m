@interface PrintBandService
- (PrintBandService)initWithXPCConnection:(id)a3;
- (void)dealloc;
- (void)znProcessBand:(id)a3 withBandDescription:(id *)a4 reply:(id)a5;
@end

@implementation PrintBandService

- (PrintBandService)initWithXPCConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PrintBandService;
  v6 = [(PrintBandService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_xpcConnection, a3);
  }

  return v7;
}

- (void)dealloc
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100034D34();
  }

  if (self->znProcessData)
  {
    znTerminate();
    znCleanup();
  }

  v3.receiver = self;
  v3.super_class = PrintBandService;
  [(PrintBandService *)&v3 dealloc];
}

- (void)znProcessBand:(id)a3 withBandDescription:(id *)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = *&a4->var8;
  v11 = *&a4->var4;
  *&self->bandCombo.bandDescription.pageWidth_pixels = *&a4->var0;
  *&self->bandCombo.bandDescription.bitsPerColor = v11;
  *&self->bandCombo.bandDescription.extendedColorspace = v10;
  self->bandCombo.raster = [v8 bytes];
  if (!a4->var7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100034DB8();
    }

    initZn(&self->znProcessData, &self->bandCombo);
  }

  v12 = znProcessImageData(self->znProcessData, &self->bandCombo, 0);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100034E3C();
  }

  if (!v12)
  {
    v12 = znAcknowledge(self->bandCombo.token, 0, self->znProcessData);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100034EB8(&self->bandCombo.token);
    }

    if (!v12)
    {
      if (a4->var6 + a4->var7 >= a4->var1)
      {
        v12 = znTerminateBanding(self->znProcessData);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_100034F44();
        }
      }

      else
      {
        v12 = 0;
      }
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    var6 = a4->var6;
    var7 = a4->var7;
    var1 = a4->var1;
    bandIsOkay = self->bandCombo.bandIsOkay;
    v18 = 136316418;
    v19 = "[PrintBandService znProcessBand:withBandDescription:reply:]";
    v20 = 1024;
    v21 = var7;
    v22 = 1024;
    v23 = var6;
    v24 = 1024;
    v25 = var1;
    v26 = 1024;
    v27 = v12;
    v28 = 1024;
    v29 = bandIsOkay;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: bandY=%d bandHeight=%d pageHeight=%d result=%d bandOkay=%d", &v18, 0x2Au);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100034FC0(self);
  }

  if (self->bandCombo.bandIsOkay)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0xFFFFFFFFLL;
  }

  v9[2](v9, v13);
}

@end
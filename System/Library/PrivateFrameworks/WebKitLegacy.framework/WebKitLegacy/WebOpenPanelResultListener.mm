@interface WebOpenPanelResultListener
- (WebOpenPanelResultListener)initWithChooser:(void *)chooser;
- (void)cancel;
- (void)chooseFilename:(id)filename;
- (void)chooseFilename:(id)filename displayString:(id)string iconImage:(CGImage *)image;
- (void)chooseFilenames:(id)filenames;
- (void)chooseFilenames:(id)filenames displayString:(id)string iconImage:(CGImage *)image;
@end

@implementation WebOpenPanelResultListener

- (WebOpenPanelResultListener)initWithChooser:(void *)chooser
{
  v9.receiver = self;
  v9.super_class = WebOpenPanelResultListener;
  result = [(WebOpenPanelResultListener *)&v9 init];
  if (result)
  {
    ++*chooser;
    m_ptr = result->_chooser.m_ptr;
    result->_chooser.m_ptr = chooser;
    if (m_ptr)
    {
      if (*m_ptr == 1)
      {
        v6 = result;
        WebCore::FileChooser::~FileChooser(m_ptr);
        WTF::fastFree(v7, v8);
        return v6;
      }

      else
      {
        --*m_ptr;
      }
    }
  }

  return result;
}

- (void)cancel
{
  m_ptr = self->_chooser.m_ptr;
  self->_chooser.m_ptr = 0;
  if (m_ptr)
  {
    if (*m_ptr == 1)
    {
      WebCore::FileChooser::~FileChooser(m_ptr);

      WTF::fastFree(v5, v6);
    }

    else
    {
      --*m_ptr;
    }
  }
}

- (void)chooseFilename:(id)filename
{
  m_ptr = self->_chooser.m_ptr;
  if (m_ptr)
  {
    MEMORY[0x1CCA63A40](&v10, filename);
    WebCore::FileChooser::chooseFile(m_ptr, &v10);
    v6 = v10;
    v10 = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v5);
    }

    v7 = self->_chooser.m_ptr;
    self->_chooser.m_ptr = 0;
    if (v7)
    {
      if (*v7 == 1)
      {
        WebCore::FileChooser::~FileChooser(v7);
        WTF::fastFree(v8, v9);
      }

      else
      {
        --*v7;
      }
    }
  }
}

- (void)chooseFilenames:(id)filenames
{
  if (self->_chooser.m_ptr)
  {
    filenamesCopy = filenames;
    v19 = &filenamesCopy;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(&v16, [filenames count], &v19, 0);
    filenamesCopy = 0;
    v15 = 0;
    WebCore::FileChooser::chooseFiles();
    v5 = filenamesCopy;
    if (HIDWORD(v15))
    {
      v6 = 8 * HIDWORD(v15);
      do
      {
        v7 = *v5;
        *v5 = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v4);
        }

        v5 = (v5 + 8);
        v6 -= 8;
      }

      while (v6);
      v5 = filenamesCopy;
    }

    if (v5)
    {
      filenamesCopy = 0;
      LODWORD(v15) = 0;
      WTF::fastFree(v5, v4);
    }

    v8 = v16;
    if (v18)
    {
      v9 = 8 * v18;
      do
      {
        v10 = *v8;
        *v8 = 0;
        if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v4);
        }

        v8 = (v8 + 8);
        v9 -= 8;
      }

      while (v9);
      v8 = v16;
    }

    if (v8)
    {
      v16 = 0;
      v17 = 0;
      WTF::fastFree(v8, v4);
    }

    m_ptr = self->_chooser.m_ptr;
    self->_chooser.m_ptr = 0;
    if (m_ptr)
    {
      if (*m_ptr == 1)
      {
        WebCore::FileChooser::~FileChooser(m_ptr);
        WTF::fastFree(v12, v13);
      }

      else
      {
        --*m_ptr;
      }
    }
  }
}

- (void)chooseFilename:(id)filename displayString:(id)string iconImage:(CGImage *)image
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = filename;
  -[WebOpenPanelResultListener chooseFilenames:displayString:iconImage:](self, "chooseFilenames:displayString:iconImage:", [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1], string, image);
}

- (void)chooseFilenames:(id)filenames displayString:(id)string iconImage:(CGImage *)image
{
  if (!self->_chooser.m_ptr)
  {
    return;
  }

  filenamesCopy = filenames;
  v23 = &filenamesCopy;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(&v20, [filenames count], &v23, 0);
  MEMORY[0x1CCA63A40](&filenamesCopy, string);
  if (image)
  {
    CFRetain(image);
  }

  WebCore::Icon::create();
  WebCore::FileChooser::chooseMediaFiles();
  v9 = v23;
  v23 = 0;
  if (!v9)
  {
LABEL_7:
    imageCopy2 = image;
    if (!image)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (*v9 != 1)
  {
    --*v9;
    goto LABEL_7;
  }

  WebCore::Icon::~Icon(v9);
  WTF::fastFree(v16, v17);
  imageCopy2 = image;
  if (image)
  {
LABEL_8:
    CFRelease(imageCopy2);
  }

LABEL_9:
  v11 = filenamesCopy;
  filenamesCopy = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v8);
  }

  v12 = v20;
  if (v22)
  {
    v13 = 8 * v22;
    do
    {
      v14 = *v12;
      *v12 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v8);
      }

      v12 = (v12 + 8);
      v13 -= 8;
    }

    while (v13);
    v12 = v20;
  }

  if (v12)
  {
    v20 = 0;
    v21 = 0;
    WTF::fastFree(v12, v8);
  }

  m_ptr = self->_chooser.m_ptr;
  self->_chooser.m_ptr = 0;
  if (m_ptr)
  {
    if (*m_ptr == 1)
    {
      WebCore::FileChooser::~FileChooser(m_ptr);
      WTF::fastFree(v18, v19);
    }

    else
    {
      --*m_ptr;
    }
  }
}

@end
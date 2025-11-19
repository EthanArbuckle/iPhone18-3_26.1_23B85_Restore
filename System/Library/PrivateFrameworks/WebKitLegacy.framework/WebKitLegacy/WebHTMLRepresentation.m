@interface WebHTMLRepresentation
+ (id)supportedImageMIMETypes;
+ (id)supportedMIMETypes;
+ (id)supportedMediaMIMETypes;
+ (id)supportedNonImageMIMETypes;
+ (id)unsupportedTextMIMETypes;
- (BOOL)_isDisplayingWebArchive;
- (BOOL)canProvideDocumentSource;
- (BOOL)canSaveAsWebArchive;
- (BOOL)elementDoesAutoComplete:(id)a3;
- (BOOL)elementIsPassword:(id)a3;
- (WebHTMLRepresentation)init;
- (id)DOMDocument;
- (id)controlsInForm:(id)a3;
- (id)currentForm;
- (id)documentSource;
- (id)elementWithName:(id)a3 inForm:(id)a4;
- (id)formForElement:(id)a3;
- (id)matchLabels:(id)a3 againstElement:(id)a4;
- (id)searchForLabels:(id)a3 beforeElement:(id)a4 resultDistance:(unint64_t *)a5 resultIsInCellAbove:(BOOL *)a6;
- (id)title;
- (void)dealloc;
- (void)finishedLoadingWithDataSource:(id)a3;
- (void)receivedData:(id)a3 withDataSource:(id)a4;
- (void)receivedError:(id)a3 withDataSource:(id)a4;
- (void)setDataSource:(id)a3;
@end

@implementation WebHTMLRepresentation

+ (id)supportedMIMETypes
{
  if (_MergedGlobals_20)
  {
    return qword_1ED6A6230;
  }

  v3 = [objc_msgSend(objc_msgSend(a1 "supportedNonImageMIMETypes")];
  qword_1ED6A6230 = v3;
  if (v3)
  {
    v4 = v3;
  }

  _MergedGlobals_20 = 1;
  return qword_1ED6A6230;
}

+ (id)supportedMediaMIMETypes
{
  if (byte_1ED6A6229 == 1)
  {
    return qword_1ED6A6238;
  }

  v6[1] = v2;
  v6[2] = v3;
  v5 = WebCore::MIMETypeRegistry::supportedMediaMIMETypes(a1);
  WTF::createNSArray<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&>(v6, v5);
  result = v6[0];
  qword_1ED6A6238 = v6[0];
  byte_1ED6A6229 = 1;
  return result;
}

+ (id)supportedNonImageMIMETypes
{
  if (byte_1ED6A622A == 1)
  {
    return qword_1ED6A6240;
  }

  v6[1] = v2;
  v6[2] = v3;
  v5 = WebCore::MIMETypeRegistry::supportedNonImageMIMETypes(a1);
  WTF::createNSArray<WTF::HashSet<WTF::String,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &>(v6, v5);
  result = v6[0];
  qword_1ED6A6240 = v6[0];
  byte_1ED6A622A = 1;
  return result;
}

+ (id)supportedImageMIMETypes
{
  if (byte_1ED6A622B)
  {
    return qword_1ED6A6248;
  }

  WebCore::MIMETypeRegistry::supportedImageMIMETypes(&v5, a1);
  WTF::createNSArray<WTF::FixedVector<WTF::ASCIILiteral,WTF::FastMalloc>>(&v6, &v5);
  v4 = v5;
  qword_1ED6A6248 = v6;
  v5 = 0;
  if (v4)
  {
    WTF::fastFree(v4, v3);
  }

  byte_1ED6A622B = 1;
  return qword_1ED6A6248;
}

+ (id)unsupportedTextMIMETypes
{
  if (byte_1ED6A622C)
  {
    return qword_1ED6A6250;
  }

  WebCore::MIMETypeRegistry::unsupportedTextMIMETypes(&v5, a1);
  WTF::createNSArray<WTF::FixedVector<WTF::ASCIILiteral,WTF::FastMalloc>>(&v6, &v5);
  v4 = v5;
  qword_1ED6A6250 = v6;
  v5 = 0;
  if (v4)
  {
    WTF::fastFree(v4, v3);
  }

  byte_1ED6A622C = 1;
  return qword_1ED6A6250;
}

- (WebHTMLRepresentation)init
{
  v5.receiver = self;
  v5.super_class = WebHTMLRepresentation;
  result = [(WebHTMLRepresentation *)&v5 init];
  if (result)
  {
    v3 = result;
    v4 = objc_alloc_init(WebHTMLRepresentationPrivate);
    result = v3;
    v3->_private = v4;
  }

  return result;
}

- (void)dealloc
{
  v3 = self->_private;
  if (v3 && v3->includedInWebKitStatistics)
  {
    --WebHTMLRepresentationCount;
  }

  v4.receiver = self;
  v4.super_class = WebHTMLRepresentation;
  [(WebHTMLRepresentation *)&v4 dealloc];
}

- (void)setDataSource:(id)a3
{
  self->_private->dataSource = a3;
  if (!self->_private->includedInWebKitStatistics)
  {
    if ([objc_msgSend(a3 "webFrame")])
    {
      self->_private->includedInWebKitStatistics = 1;
      ++WebHTMLRepresentationCount;
    }
  }
}

- (BOOL)_isDisplayingWebArchive
{
  v2 = [(WebDataSource *)self->_private->dataSource _responseMIMEType];

  return [v2 _webkit_isCaseInsensitiveEqualToString:@"application/x-webarchive"];
}

- (void)receivedData:(id)a3 withDataSource:(id)a4
{
  if (self)
  {
    v7 = self;
  }

  v8 = [a4 webFrame];
  if (v8)
  {
    if (!self->_private->pluginView)
    {
      v9 = v8;
      [v8 _commitData:a3];
      v8 = v9;
    }

    v10 = *(v8[1] + 8);
    if ((*(*(v10 + 224) + 3518) & 0x10) != 0)
    {
      v11 = *(*(v10 + 208) + 96);
      if (v11)
      {
        WebResourceLoadScheduler::pluginWillHandleLoadErrorFromResponse((v11 + 1280), &v19);
        WebCore::DocumentLoader::cancelMainResourceLoad();
        v13 = v22;
        v22 = 0;
        if (v13)
        {
        }

        v14 = v21;
        v21 = 0;
        if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v12);
        }

        v15 = v20;
        v20 = 0;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v12);
        }

        v16 = v19;
        v19 = 0;
        if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v12);
        }
      }
    }

    v17 = self->_private;
    pluginView = v17->pluginView;
    if (pluginView)
    {
      if (!v17->hasSentResponseToPlugin)
      {
        -[WebPluginManualLoader pluginView:receivedResponse:](v17->manualLoader, "pluginView:receivedResponse:", v17->pluginView, [a4 response]);
        self->_private->hasSentResponseToPlugin = 1;
        v17 = self->_private;
        pluginView = v17->pluginView;
      }

      [(WebPluginManualLoader *)v17->manualLoader pluginView:pluginView receivedData:a3, v19, v20];
    }
  }

  else if (!self)
  {
    return;
  }
}

- (void)receivedError:(id)a3 withDataSource:(id)a4
{
  v5 = self->_private;
  pluginView = v5->pluginView;
  if (pluginView)
  {
    [(WebPluginManualLoader *)v5->manualLoader pluginView:pluginView receivedError:a3];
  }
}

- (void)finishedLoadingWithDataSource:(id)a3
{
  v4 = [a3 webFrame];
  v5 = self->_private;
  if (!v5->pluginView)
  {
    if (!v4)
    {
      return;
    }

    v7 = v4;
    v8 = [v4 webView];
    if ([v8 mainFrame] != v7 || !objc_msgSend(v8, "isEditable"))
    {
      return;
    }

    v9 = *(*(v7[1] + 8) + 224);
    if (v9)
    {
      *(v9 + 7) += 2;
    }

    v10 = WebCore::Document::editor(v9);
    if (v9)
    {
      if (*(v9 + 7) == 2)
      {
        v11 = v10;
        WebCore::Node::removedLastRef(v9);
        v10 = v11;

        goto LABEL_15;
      }

      *(v9 + 7) -= 2;
    }

LABEL_15:
    WebCore::Editor::applyEditingStyleToBodyElement(v10);
    return;
  }

  manualLoader = v5->manualLoader;

  [(WebPluginManualLoader *)manualLoader pluginViewFinishedLoading:?];
}

- (BOOL)canProvideDocumentSource
{
  v2 = [(WebDataSource *)self->_private->dataSource webFrame];

  return [(WebFrame *)v2 _canProvideDocumentSource];
}

- (BOOL)canSaveAsWebArchive
{
  v2 = [(WebDataSource *)self->_private->dataSource webFrame];

  return [(WebFrame *)v2 _canSaveAsWebArchive];
}

- (id)documentSource
{
  if (![(WebHTMLRepresentation *)self _isDisplayingWebArchive])
  {
    v8 = [(WebDataSource *)self->_private->dataSource webFrame];
    if (!v8)
    {
      return 0;
    }

    m_ptr = v8->_private->coreFrame.m_ptr;
    if (!m_ptr)
    {
      return 0;
    }

    v10 = *(m_ptr + 28);
    if (!v10)
    {
      return 0;
    }

    if (!*(v10 + 1816))
    {
      return 0;
    }

    v11 = [(WebDataSource *)self->_private->dataSource data];
    if (!v11)
    {
      return 0;
    }

    v12 = v11;
    [(NSData *)v11 bytes];
    [(NSData *)v12 length];
    v24 = 0;
    PAL::TextEncoding::decode();
    if (v22)
    {
      atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v23);
      if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v13);
      }
    }

    else
    {
      v23 = &stru_1F472E7E8;
      v21 = &stru_1F472E7E8;
    }

    v14 = v23;
    v23 = 0;
    if (v14)
    {
      v15 = v14;
      v16 = v23;
      v23 = 0;
      if (v16)
      {
      }
    }

    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v13);
    }

    return v14;
  }

  dataSource = self->_private->dataSource;
  if (dataSource)
  {
    [(WebDataSource *)dataSource _documentLoader];
    v4 = WebCore::DocumentLoader::parsedArchiveData(v23);
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v4)
    {
LABEL_4:
      v6 = v5;
      WebCore::SharedBuffer::createNSData(&v23, v4);
      v5 = v6;
      v7 = v23;
      goto LABEL_23;
    }
  }

  else
  {
    v23 = 0;
    v4 = WebCore::DocumentLoader::parsedArchiveData(0);
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v4)
    {
      goto LABEL_4;
    }
  }

  v7 = 0;
LABEL_23:
  v18 = [v5 initWithData:v7 encoding:4];
  v14 = v18;
  if (v18)
  {
    v19 = v18;
  }

  if (!v4)
  {
    return v14;
  }

  v20 = v23;
  v23 = 0;
  if (!v20)
  {
    return v14;
  }

  return v14;
}

- (id)title
{
  [(WebDataSource *)self->_private->dataSource _documentLoader];
  result = *(v3 + 1624);
  if (result)
  {
    if (*(result + 1))
    {
      return WTF::StringImpl::operator NSString *();
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)DOMDocument
{
  v2 = [(WebDataSource *)self->_private->dataSource webFrame];

  return [(WebFrame *)v2 DOMDocument];
}

- (id)elementWithName:(id)a3 inForm:(id)a4
{
  result = core(a4);
  if (!result)
  {
    return result;
  }

  if ((*(result + 16) & 0x10) == 0)
  {
    return 0;
  }

  if (*(*(result + 13) + 24) != *(*MEMORY[0x1E69E2BC0] + 24))
  {
    return 0;
  }

  v7 = result;
  v8 = MEMORY[0x1E69E2668];
  ++*MEMORY[0x1E69E2668];
  WTF::AtomStringImpl::add(&v19, a3, v6);
  v9 = v19;
  v10 = WebCore::HTMLFormElement::unsafeListedElements(v7);
  v12 = *(v10 + 12);
  if (!v12)
  {
LABEL_16:
    result = 0;
    goto LABEL_20;
  }

  v13 = *v10;
  v14 = 8 * v12;
  while (1)
  {
    if (!*v13)
    {
      goto LABEL_9;
    }

    v15 = *(*v13 + 8);
    if (!v15)
    {
      goto LABEL_9;
    }

    *(v15 + 7) += 2;
    v16 = (*(*v15 + 448))(v15);
    if (*(*(*v16 + 128))(v16) == v9)
    {
      break;
    }

    if (*(v15 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v15);
    }

    else
    {
      *(v15 + 7) -= 2;
    }

LABEL_9:
    v13 += 8;
    v14 -= 8;
    if (!v14)
    {
      goto LABEL_16;
    }
  }

  result = kit(v15);
  if (*(v15 + 7) == 2)
  {
    v17 = result;
    WebCore::Node::removedLastRef(v15);
    result = v17;
  }

  else
  {
    *(v15 + 7) -= 2;
  }

LABEL_20:
  if (v9)
  {
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v18 = result;
      WTF::StringImpl::destroy(v9, v11);
      result = v18;
    }
  }

  --*v8;
  return result;
}

- (BOOL)elementDoesAutoComplete:(id)a3
{
  v3 = core(a3);
  if (!v3)
  {
    return 0;
  }

  if ((*(v3 + 32) & 0x10) == 0)
  {
    return 0;
  }

  if (*(*(v3 + 104) + 24) != *(*MEMORY[0x1E69E2C70] + 24))
  {
    return 0;
  }

  v4 = v3;
  if (!WebCore::HTMLInputElement::isTextField(v3) || (WebCore::HTMLInputElement::isPasswordField(v4) & 1) != 0)
  {
    return 0;
  }

  return MEMORY[0x1EEE5CF20](v4);
}

- (BOOL)elementIsPassword:(id)a3
{
  v3 = core(a3);
  if (!v3 || (*(v3 + 32) & 0x10) == 0 || *(*(v3 + 104) + 24) != *(*MEMORY[0x1E69E2C70] + 24))
  {
    return 0;
  }

  return WebCore::HTMLInputElement::isPasswordField(v3);
}

- (id)formForElement:(id)a3
{
  v3 = core(a3);
  if (!v3 || (*(v3 + 32) & 0x10) == 0 || *(*(v3 + 104) + 24) != *(*MEMORY[0x1E69E2C70] + 24))
  {
    return 0;
  }

  v4 = *(v3 + 128);
  if (v4)
  {
    v5 = *(v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  return kit(v5);
}

- (id)currentForm
{
  WebCore::FrameSelection::currentForm(&v5, *(*(*([(WebDataSource *)self->_private->dataSource webFrame][8] + 8) + 224) + 3208));
  result = kit(v5);
  v3 = v5;
  v5 = 0;
  if (v3)
  {
    if (*(v3 + 7) == 2)
    {
      v4 = result;
      WebCore::Node::removedLastRef(v3);
      return v4;
    }

    else
    {
      *(v3 + 7) -= 2;
    }
  }

  return result;
}

- (id)controlsInForm:(id)a3
{
  v3 = core(a3);
  if (!v3 || (*(v3 + 32) & 0x10) == 0 || *(*(v3 + 104) + 24) != *(*MEMORY[0x1E69E2BC0] + 24))
  {
    return 0;
  }

  v4 = MEMORY[0x1E69E2668];
  ++*MEMORY[0x1E69E2668];
  v5 = WebCore::HTMLFormElement::unsafeListedElements(v3);
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(v5 + 12)];
  v7 = *(v5 + 12);
  if (v7)
  {
    v8 = *v5;
    for (i = 8 * v7; i; i -= 8)
    {
      if (!*v8)
      {
        goto LABEL_8;
      }

      v10 = *(*v8 + 8);
      if (!v10)
      {
        goto LABEL_8;
      }

      *(v10 + 7) += 2;
      v11 = (*(*v10 + 448))(v10);
      if ((*(*v11 + 120))(v11))
      {
        v12 = kit(v10);
        v13 = *(v10 + 7) - 2;
        if (*(v10 + 7) != 2)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v12 = 0;
        v13 = *(v10 + 7) - 2;
        if (*(v10 + 7) != 2)
        {
LABEL_15:
          *(v10 + 7) = v13;
          if (!v12)
          {
            goto LABEL_8;
          }

LABEL_7:
          [v6 addObject:v12];
          goto LABEL_8;
        }
      }

      WebCore::Node::removedLastRef(v10);
      if (v12)
      {
        goto LABEL_7;
      }

LABEL_8:
      v8 += 8;
    }
  }

  if ([v6 count])
  {
    if (v6)
    {
      v15 = v6;
    }
  }

  else if (v6)
  {

    v6 = 0;
  }

  --*v4;
  return v6;
}

- (id)searchForLabels:(id)a3 beforeElement:(id)a4 resultDistance:(unint64_t *)a5 resultIsInCellAbove:(BOOL *)a6
{
  v10 = [(WebDataSource *)self->_private->dataSource webFrame];
  if (v10)
  {
    m_ptr = v10->_private->coreFrame.m_ptr;
  }

  else
  {
    m_ptr = 0;
  }

  v12 = core(a4);
  v64 = regExpForLabels(a3);
  v66 = -1;
  v14 = *(v12 + 56);
  if (v14)
  {
    Child = WebCore::NodeTraversal::deepLastChild(v14, v13);
    if (!Child)
    {
      goto LABEL_91;
    }

    goto LABEL_8;
  }

  Child = *(v12 + 40);
  if (Child)
  {
LABEL_8:
    v60 = a5;
    v16 = 0;
    v63 = 0;
    v17 = 0;
    v18 = MEMORY[0x1E69E2BC0];
    v19 = MEMORY[0x1E69E2B10];
    while (1)
    {
      v20 = *(Child + 32);
      if ((v20 & 0x10) != 0)
      {
        v26 = *(*(Child + 104) + 24);
        if ((~v20 & 0x88) == 0 || v26 == *(*v18 + 24))
        {
LABEL_79:
          a5 = v60;
          if (v16 && (v63 & 1) == 0)
          {
            WebCore::LocalFrame::searchForLabelsAboveCell();
            v49 = v68;
            if (v68)
            {
              atomic_fetch_add_explicit(v68, 2u, memory_order_relaxed);
              MEMORY[0x1CCA63450](&v65, v49);
              if (atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v49, v50);
              }
            }

            else
            {
              v65 = &stru_1F472E7E8;
              v59 = &stru_1F472E7E8;
            }

            v51 = v68;
            v68 = 0;
            if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v51, v50);
            }

            if ([v65 length])
            {
              v52 = 1;
              goto LABEL_92;
            }

            v53 = v65;
            v65 = 0;
            if (v53)
            {
            }
          }

          goto LABEL_91;
        }

        if (v26 == *(*v19 + 24) && v16 == 0)
        {
          v16 = Child;
          goto LABEL_74;
        }

        if (v26 == *(*MEMORY[0x1E69E2B20] + 24) && v16 != 0)
        {
          v30 = a6;
          v31 = v18;
          v32 = Child;
          WebCore::LocalFrame::searchForLabelsAboveCell();
          v33 = v68;
          if (v68)
          {
            atomic_fetch_add_explicit(v68, 2u, memory_order_relaxed);
            MEMORY[0x1CCA63450](&v65, v33);
            if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v33, v34);
            }
          }

          else
          {
            v65 = &stru_1F472E7E8;
            v48 = &stru_1F472E7E8;
          }

          v35 = v68;
          v68 = 0;
          if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v35, v34);
          }

          if ([v65 length])
          {
            v52 = 1;
            a5 = v60;
            a6 = v30;
            goto LABEL_92;
          }

          v36 = v65;
          v65 = 0;
          if (v36)
          {
          }

          v63 = 1;
          Child = v32;
          v18 = v31;
          a6 = v30;
          goto LABEL_74;
        }
      }

      else if ((~v20 & 0x88) == 0)
      {
        goto LABEL_79;
      }

      v21 = *(Child + 72);
      if (!v21)
      {
        goto LABEL_74;
      }

      if ((*(v21 + 45) & 2) == 0)
      {
        goto LABEL_74;
      }

      v22 = *(*(v21 + 32) + 8);
      if ((*(*(v22 + 104) + 270) & 0x10) != 0 || (*(v22 + 124) & 3) != 0)
      {
        goto LABEL_74;
      }

      v62 = Child;
      (*(*Child + 112))(&v67);
      v23 = v67;
      if (v67)
      {
        LODWORD(v24) = *(v67 + 1);
        if (v24 + v17 < 0x259)
        {
          goto LABEL_54;
        }

        v25 = (v24 - (500 - v17));
        if (v24 == 500 - v17)
        {
          atomic_fetch_add_explicit(v67, 2u, memory_order_relaxed);
        }

        else
        {
          WTF::StringImpl::substring(v67);
          v23 = v68;
        }

        v37 = v67;
        v67 = v23;
        v68 = 0;
        if (v37)
        {
          if (atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v37, v25);
          }

          v38 = v68;
          v68 = 0;
          if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v38, v25);
          }

          v23 = v67;
        }

        if (v23)
        {
          break;
        }
      }

      v24 = 0;
      v39 = 0x100000000;
LABEL_56:
      v61 = v24 | v61 & 0xFFFFFF0000000000 | v39;
      v40 = JSC::Yarr::RegularExpression::searchRev();
      if (v40 < 0)
      {
        v45 = v67;
        if (v67)
        {
          v45 = *(v67 + 1);
        }

        Child = v62;
        v17 += v45;
      }

      else
      {
        v41 = m_ptr;
        v42 = a6;
        v66 = v17;
        v43 = JSC::Yarr::RegularExpression::matchedLength(v64);
        v44 = v67;
        if (!v67)
        {
          goto LABEL_69;
        }

        if (v40 || *(v67 + 1) > v43)
        {
          WTF::StringImpl::substring(v67);
          v44 = v68;
          if (!v68)
          {
LABEL_69:
            v65 = &stru_1F472E7E8;
            v46 = &stru_1F472E7E8;
            Child = v62;
            a6 = v42;
            m_ptr = v41;
            goto LABEL_70;
          }
        }

        else
        {
          atomic_fetch_add_explicit(v67, 2u, memory_order_relaxed);
        }

        atomic_fetch_add_explicit(v44, 2u, memory_order_relaxed);
        MEMORY[0x1CCA63450](&v65, v44);
        if (atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v44, v13);
        }

        if (atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v44, v13);
        }

        Child = v62;
        a6 = v42;
        m_ptr = v41;
      }

LABEL_70:
      v47 = v67;
      v67 = 0;
      if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v47, v13);
        Child = v62;
      }

      if ((v40 & 0x80000000) == 0)
      {
        v52 = 0;
        a5 = v60;
        goto LABEL_92;
      }

LABEL_74:
      if (*(Child + 56))
      {
        Child = WebCore::NodeTraversal::deepLastChild(*(Child + 56), v13);
        if (!Child)
        {
          goto LABEL_79;
        }
      }

      else
      {
        Child = *(Child + 40);
        if (!Child)
        {
          goto LABEL_79;
        }
      }

      if (v17 >= 0x1F4)
      {
        goto LABEL_79;
      }
    }

    LODWORD(v24) = *(v23 + 1);
LABEL_54:
    v24 = v24;
    v39 = ((*(v23 + 4) >> 2) & 1) << 32;
    goto LABEL_56;
  }

LABEL_91:
  v52 = 0;
  v65 = 0;
LABEL_92:
  if (a5)
  {
    v54 = v66;
    if (v66 == -1)
    {
      v54 = 0x7FFFFFFFFFFFFFFFLL;
    }

    *a5 = v54;
  }

  if (a6)
  {
    *a6 = v52;
  }

  v55 = v65;
  v65 = 0;
  if (v55)
  {
    v56 = v55;
    v57 = v65;
    v65 = 0;
    if (v57)
    {
    }
  }

  return v55;
}

- (id)matchLabels:(id)a3 againstElement:(id)a4
{
  v5 = core(a4);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *(v5 + 112);
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = *(v7 + 4);
  if (v8)
  {
    v9 = *(v7 + 40);
    v10 = *(v7 + 52);
    if (!v10)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v9 = v7 + 32;
    v10 = v8 >> 5;
    if (!(v8 >> 5))
    {
LABEL_5:
      v11 = MEMORY[0x1E696EB90];
      goto LABEL_15;
    }
  }

  v13 = v10;
  v14 = *MEMORY[0x1E69E2C98];
  v11 = (v9 + 8);
  v15 = 16 * v13;
  while (1)
  {
    v16 = *(v11 - 1);
    if (v16 == v14 || *(v16 + 24) == *(v14 + 24) && *(v16 + 32) == *(v14 + 32))
    {
      break;
    }

    v11 += 2;
    v15 -= 16;
    if (!v15)
    {
      v11 = MEMORY[0x1E696EB90];
      break;
    }
  }

LABEL_15:
  matchLabelsAgainstString(&v31, a3, *v11);
  if (![(objc_class *)v31.super.isa length])
  {
    v18 = *(v6 + 112);
    if (v18)
    {
      v19 = *(v18 + 4);
      if (v19)
      {
        v20 = *(v18 + 40);
        v21 = *(v18 + 52);
        if (!v21)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v20 = v18 + 32;
        v21 = v19 >> 5;
        if (!(v19 >> 5))
        {
          goto LABEL_21;
        }
      }

      v23 = v21;
      v24 = *MEMORY[0x1E69E2B58];
      v22 = (v20 + 8);
      v25 = 16 * v23;
      while (1)
      {
        v26 = *(v22 - 1);
        if (v26 == v24 || *(v26 + 24) == *(v24 + 24) && *(v26 + 32) == *(v24 + 32))
        {
          break;
        }

        v22 += 2;
        v25 -= 16;
        if (!v25)
        {
          v22 = MEMORY[0x1E696EB90];
          break;
        }
      }

LABEL_30:
      matchLabelsAgainstString(&v30, a3, *v22);
      isa = v31.super.isa;
      v31.super.isa = 0;
      if (isa)
      {
      }

      v17 = v30;
      v30 = 0;
      if (!v17)
      {
        return v17;
      }

      goto LABEL_33;
    }

LABEL_21:
    v22 = MEMORY[0x1E696EB90];
    goto LABEL_30;
  }

  v17 = v31.super.isa;
  v30 = 0;
  if (!v31.super.isa)
  {
    return v17;
  }

LABEL_33:
  v28 = v17;
  v29 = v30;
  v30 = 0;
  if (!v29)
  {
    return v17;
  }

  return v17;
}

@end
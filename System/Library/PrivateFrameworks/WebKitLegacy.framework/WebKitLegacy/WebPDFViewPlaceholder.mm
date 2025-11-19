@interface WebPDFViewPlaceholder
+ (void)setAsPDFDocRepAndView;
- (CGPDFDocument)document;
- (CGRect)_getPDFPageBounds:(CGPDFPage *)a3;
- (CGRect)rectForPageNumber:(unint64_t)a3;
- (CGSize)_computePageRects:(CGPDFDocument *)a3;
- (CGSize)containerSize;
- (unint64_t)totalPages;
- (void)_doPostLoadOrUnlockTasks;
- (void)_evaluateJSForDocument:(CGPDFDocument *)a3;
- (void)_notifyDidCompleteLayout;
- (void)_updateTitleForDocumentIfAvailable;
- (void)_updateTitleForURL:(id)a3;
- (void)dealloc;
- (void)finishedLoadingWithDataSource:(id)a3;
- (void)layout;
- (void)setDataSource:(id)a3;
- (void)setDocument:(CGPDFDocument *)a3;
- (void)simulateClickOnLinkToURL:(id)a3;
@end

@implementation WebPDFViewPlaceholder

- (CGPDFDocument)document
{
  objc_sync_enter(self);
  document = self->_document;
  objc_sync_exit(self);
  if (document)
  {
    return document;
  }

  [(WebPDFViewPlaceholder *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v5 = [(WebPDFViewPlaceholder *)self delegate];

  return [(WebPDFViewPlaceholderDelegate *)v5 cgPDFDocument];
}

- (void)setDocument:(CGPDFDocument *)a3
{
  objc_sync_enter(self);
  CGPDFDocumentRetain(a3);
  CGPDFDocumentRelease(self->_document);
  self->_document = a3;

  objc_sync_exit(self);
}

- (unint64_t)totalPages
{
  v2 = [(WebPDFViewPlaceholder *)self document];

  return CGPDFDocumentGetNumberOfPages(v2);
}

+ (void)setAsPDFDocRepAndView
{
  [WebView _setPDFRepresentationClass:objc_opt_class()];
  v2 = objc_opt_class();

  [WebView _setPDFViewClass:v2];
}

- (void)dealloc
{
  [(WebPDFViewPlaceholder *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(WebPDFViewPlaceholderDelegate *)[(WebPDFViewPlaceholder *)self delegate] viewWillClose];
  }

  [(WebPDFViewPlaceholder *)self setTitle:0];
  [(WebPDFViewPlaceholder *)self setPageRects:0];
  [(WebPDFViewPlaceholder *)self setPageYOrigins:0];
  [(WebPDFViewPlaceholder *)self setDocument:0];
  v3.receiver = self;
  v3.super_class = WebPDFViewPlaceholder;
  [(WebPDFViewPlaceholder *)&v3 dealloc];
}

- (void)setDataSource:(id)a3
{
  [(WebPDFViewPlaceholder *)self dataSourceUpdated:?];
  if ([a3 request])
  {
    -[WebPDFViewPlaceholder _updateTitleForURL:](self, "_updateTitleForURL:", [objc_msgSend(a3 "request")]);
  }

  v5 = [(WebPDFViewPlaceholder *)self superview];
  if (v5)
  {
    v6 = v5;
    [v5 bounds];
    [(WebPDFViewPlaceholder *)self convertRect:v6 fromView:?];

    [(WebPDFViewPlaceholder *)self setBoundsSize:v7, v8];
  }
}

- (void)_notifyDidCompleteLayout
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    [(WebPDFViewPlaceholder *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v3 = [(WebPDFViewPlaceholder *)self delegate];

      [(WebPDFViewPlaceholderDelegate *)v3 didCompleteLayout];
    }
  }

  else
  {

    [(WebPDFViewPlaceholder *)self performSelectorOnMainThread:sel__notifyDidCompleteLayout withObject:0 waitUntilDone:0];
  }
}

- (void)layout
{
  if (self->_didFinishLoad && ![(WebPDFViewPlaceholder *)self pageRects])
  {
    [(WebPDFViewPlaceholder *)self _computePageRects:self->_document];
    [(WebPDFViewPlaceholder *)self setBoundsSize:?];
    self->_didCompleteLayout = 1;

    [(WebPDFViewPlaceholder *)self _notifyDidCompleteLayout];
  }
}

- (void)_doPostLoadOrUnlockTasks
{
  if (self->_document)
  {
    [(WebPDFViewPlaceholder *)self _updateTitleForDocumentIfAvailable];
    [(WebPDFViewPlaceholder *)self _evaluateJSForDocument:self->_document];

    [(WebPDFViewPlaceholder *)self layout];
  }
}

- (void)finishedLoadingWithDataSource:(id)a3
{
  [(WebPDFViewPlaceholder *)self dataSourceUpdated:?];
  self->_didFinishLoad = 1;
  v5 = CGDataProviderCreateWithCFData([a3 data]);
  if (v5)
  {
    v6 = v5;
    self->_document = CGPDFDocumentCreateWithProvider(v5);
    [(WebPDFViewPlaceholder *)self _doPostLoadOrUnlockTasks];

    CFRelease(v6);
  }
}

- (void)_evaluateJSForDocument:(CGPDFDocument *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (CGPDFDocumentIsUnlocked(a3))
    {
      v5 = allScriptsInPDFDocument(a3);
      if ([v5 count])
      {
        v6 = JSGlobalContextCreate(0);
        Weak = objc_loadWeak(&self->_dataSource);
        {
          v8 = jsPDFDocClass(void)::jsPDFDocClass;
        }

        else
        {
          v8 = JSClassCreate(&jsPDFDocClass(void)::jsPDFDocClassDefinition);
          jsPDFDocClass(void)::jsPDFDocClass = v8;
        }

        v9 = JSObjectMake(v6, v8, Weak);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v10)
        {
          v11 = *v21;
          do
          {
            v12 = 0;
            do
            {
              if (*v21 != v11)
              {
                objc_enumerationMutation(v5);
              }

              MEMORY[0x1CCA63A40](&v18, *(*(&v20 + 1) + 8 * v12));
              OpaqueJSString::tryCreate();
              JSEvaluateScript(v6, script, v9, 0, 0, 0);
              v14 = script;
              script = 0;
              if (v14 && atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v14);
                OpaqueJSString::~OpaqueJSString(v14);
                WTF::fastFree(v16, v17);
                v15 = v18;
                v18 = 0;
                if (!v15)
                {
                  goto LABEL_9;
                }
              }

              else
              {
                v15 = v18;
                v18 = 0;
                if (!v15)
                {
                  goto LABEL_9;
                }
              }

              if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v15, v13);
              }

LABEL_9:
              ++v12;
            }

            while (v10 != v12);
            v10 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
          }

          while (v10);
        }

        JSGlobalContextRelease(v6);
      }
    }
  }
}

- (void)_updateTitleForURL:(id)a3
{
  v5 = [a3 lastPathComponent];
  if (![v5 length] || objc_msgSend(v5, "isEqualToString:", @"/"))
  {
    v5 = [objc_msgSend(a3 "_web_hostString")];
  }

  [(WebPDFViewPlaceholder *)self setTitle:v5];
  v6 = [(WAKView *)self _frame];

  [v6 _dispatchDidReceiveTitle:v5];
}

- (void)_updateTitleForDocumentIfAvailable
{
  document = self->_document;
  if (document)
  {
    if (CGPDFDocumentIsUnlocked(document))
    {
      Info = CGPDFDocumentGetInfo(self->_document);
      value = 0;
      if (CGPDFDictionaryGetString(Info, "Title", &value))
      {
        v5 = CGPDFStringCopyTextString(value);
        if (v5)
        {
          v6 = v5;
          if (CFStringGetLength(v5))
          {
            [(WebPDFViewPlaceholder *)self setTitle:v6];
            [-[WAKView _frame](self "_frame")];
          }

          CFRelease(v6);
        }
      }
    }
  }
}

- (CGRect)_getPDFPageBounds:(CGPDFPage *)a3
{
  if (a3)
  {
    BoxRect = CGPDFPageGetBoxRect(a3, kCGPDFCropBox);
    x = BoxRect.origin.x;
    y = BoxRect.origin.y;
    width = BoxRect.size.width;
    height = BoxRect.size.height;
    v8 = CGPDFPageGetRotationAngle(a3) * 0.0174532925;
    if (v8 != 0.0)
    {
      CGAffineTransformMakeRotation(&v17, v8);
      v19.origin.x = x;
      v19.origin.y = y;
      v19.size.width = width;
      v19.size.height = height;
      v20 = CGRectApplyAffineTransform(v19, &v17);
      x = v20.origin.x;
      y = v20.origin.y;
      width = v20.size.width;
      height = v20.size.height;
    }

    v9 = x;
    v10 = roundf(v9);
    v11 = y;
    v12 = roundf(v11);
    v13 = width;
    v14 = roundf(v13);
    v15 = height;
    v16 = roundf(v15);
  }

  else
  {
    v10 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 8);
    v14 = *(MEMORY[0x1E695F058] + 16);
    v16 = *(MEMORY[0x1E695F058] + 24);
  }

  result.size.height = v16;
  result.size.width = v14;
  result.origin.y = v12;
  result.origin.x = v10;
  return result;
}

- (CGSize)_computePageRects:(CGPDFDocument *)a3
{
  if ([(WebPDFViewPlaceholder *)self pageRects])
  {
    [(WebPDFViewPlaceholder *)self bounds];
    v6 = v5;
    v8 = v7;
  }

  else if (a3 && CGPDFDocumentIsUnlocked(a3) && (NumberOfPages = CGPDFDocumentGetNumberOfPages(a3)) != 0 && (v10 = NumberOfPages, (v11 = [MEMORY[0x1E695DF70] array]) != 0) && (v12 = v11, (v13 = objc_msgSend(MEMORY[0x1E695DF70], "array")) != 0))
  {
    v14 = v13;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v53 = 0;
    v54 = 0;
    v18 = 0.0;
    while (1)
    {
      Page = CGPDFDocumentGetPage(a3, v15 + 1);
      if (!Page)
      {
        break;
      }

      [(WebPDFViewPlaceholder *)self _getPDFPageBounds:Page, 0, 0, 0, 0];
      *&v51 = v25;
      *(&v51 + 1) = v26;
      *&v52 = v24;
      *(&v52 + 1) = v27;
      if (v18 < v24)
      {
        v18 = v24;
      }

      if (v17 == v54)
      {
        v28 = WTF::Vector<CGRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v53, v17 + 1, &v51);
        v29 = HIDWORD(v54);
        v16 = v53;
        v30 = (v53 + 32 * HIDWORD(v54));
        v31 = v28[1];
        *v30 = *v28;
        v30[1] = v31;
        v17 = v29 + 1;
        HIDWORD(v54) = v17;
        v32 = v15 + 2;
        ++v15;
        if (v32 > v10)
        {
LABEL_17:
          v15 = v10;
          break;
        }
      }

      else
      {
        v19 = v52;
        v20 = (v16 + 32 * v17);
        *v20 = v51;
        v20[1] = v19;
        HIDWORD(v54) = ++v17;
        v21 = v15 + 2;
        ++v15;
        if (v21 > v10)
        {
          goto LABEL_17;
        }
      }
    }

    if (v15)
    {
      width = self->_containerSize.width;
      v8 = width / v18;
      if (width >= 0.00000011920929)
      {
        v34 = width / v18;
      }

      else
      {
        v34 = 1.0;
      }

      v6 = v18 + 16.0;
      v35 = (v18 + 16.0) * v34;
      v36 = v17;
      v37 = (v16 + 24);
      v38 = 8.0;
      while (v36)
      {
        v39 = v34 * *(v37 - 1);
        v40 = roundf(v39);
        v41 = v34 * *v37;
        v42 = roundf(v41);
        v43 = (v35 - v40) * 0.5;
        v44 = roundf(v43);
        [v12 addObject:{objc_msgSend(MEMORY[0x1E696B098], "_web_valueWithCGRect:", Page, v44, v38, v40, v42)}];
        v45 = MEMORY[0x1E696AD98];
        v56.origin.x = v44;
        v56.origin.y = v38;
        v56.size.width = v40;
        v56.size.height = v42;
        MinY = CGRectGetMinY(v56);
        *&MinY = MinY;
        [v14 addObject:{objc_msgSend(v45, "numberWithFloat:", MinY)}];
        v6 = v42 + 8.0;
        v38 = v38 + v42 + 8.0;
        --v36;
        v37 += 4;
        if (!--v15)
        {
          [(WebPDFViewPlaceholder *)self setPageRects:v12];
          [(WebPDFViewPlaceholder *)self setPageYOrigins:v14];
          v47 = v35;
          v6 = roundf(v47);
          v48 = v38;
          v8 = roundf(v48);
          goto LABEL_27;
        }
      }

      __break(0xC471u);
    }

    else
    {
      v6 = *MEMORY[0x1E695F060];
      v8 = *(MEMORY[0x1E695F060] + 8);
      if (v16)
      {
LABEL_27:
        v53 = 0;
        LODWORD(v54) = 0;
        v49 = v6;
        v50 = v8;
        WTF::fastFree(v16, v22);
        v8 = v50;
        v6 = v49;
      }
    }
  }

  else
  {
    v6 = *MEMORY[0x1E695F060];
    v8 = *(MEMORY[0x1E695F060] + 8);
  }

  result.height = v8;
  result.width = v6;
  return result;
}

- (CGRect)rectForPageNumber:(unint64_t)a3
{
  if (a3 && [(NSArray *)self->_pageRects count]>= a3)
  {
    [-[NSArray objectAtIndex:](self->_pageRects objectAtIndex:{a3 - 1), "_web_CGRectValue"}];
  }

  else
  {
    v5 = *MEMORY[0x1E695F050];
    v6 = *(MEMORY[0x1E695F050] + 8);
    v7 = *(MEMORY[0x1E695F050] + 16);
    v8 = *(MEMORY[0x1E695F050] + 24);
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)simulateClickOnLinkToURL:(id)a3
{
  if (a3)
  {
    v4 = self;
    v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 736);
    if (!v5 || (self = *(v5 + 96)) == 0)
    {
      self = WebCore::threadGlobalDataSlow(self);
    }

    if (!self->super.viewContext.willRemoveSubviewCallback)
    {
      self = WebCore::ThreadGlobalData::initializeEventNames(self);
    }

    WTF::MonotonicTime::now(self);
    v43 = 0;
    v44 = 0;
    v41[0] = 0;
    v41[1] = 0;
    v29[0] = 0;
    v29[1] = 0;
    LOWORD(v28) = 257;
    LOBYTE(v27) = 0;
    WORD1(v26) = 0;
    LOBYTE(v26) = 0;
    WebCore::MouseEvent::create();
    v40[0] = 0;
    v6 = [objc_loadWeak(&v4->_dataSource) webFrame];
    if (v6)
    {
      v7 = *(*(v6 + 8) + 8);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v7 + 224);
    v8[7] += 2;
    v44 = v8;
    v9 = WebCore::SecurityContext::securityOrigin((v8 + 52));
    MEMORY[0x1CCA63960](v40, a3);
    WebCore::ResourceRequestBase::RequestData::RequestData(v29, v40, 0);
    v31 = 0;
    v10 = *MEMORY[0x1E696EBA8];
    if (*MEMORY[0x1E696EBA8])
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    }

    v32 = v10;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = v36 & 0xE0 | 5;
    v30 |= 2u;
    v37 = 0;
    v43 = 0;
    v39 = 0;
    MEMORY[0x1CCA65710](v41, &v44, v9, v29, &v43, 1, &v39);
    v12 = v39;
    v39 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v11);
    }

    v13 = v43;
    v43 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v11);
    }

    v14 = v37;
    v37 = 0;
    if (v14)
    {
    }

    v15 = v33;
    v33 = 0;
    if (v15)
    {
      if (*v15 == 1)
      {
        v17 = MEMORY[0x1CCA67F60]();
        bmalloc::api::tzoneFree(v17, v18);
        v16 = v32;
        v32 = 0;
        if (!v16)
        {
          goto LABEL_28;
        }

        goto LABEL_26;
      }

      --*v15;
    }

    v16 = v32;
    v32 = 0;
    if (!v16)
    {
      goto LABEL_28;
    }

LABEL_26:
    if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v11);
    }

LABEL_28:
    v19 = v31;
    v31 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v11);
    }

    WebCore::ResourceRequestBase::RequestData::~RequestData(v29, v11);
    v21 = v40[0];
    v40[0] = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v20);
    }

    v22 = v44;
    v44 = 0;
    if (v22)
    {
      if (*(v22 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v22);
      }

      else
      {
        *(v22 + 7) -= 2;
      }
    }

    v42 = 1;
    v40[0] = 0;
    LOBYTE(v29[0]) = 0;
    v38 = 0;
    WebCore::FrameLoader::loadFrameRequest();
    if (v38 == 1)
    {
      WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(v29, v23);
    }

    v24 = v40[0];
    v40[0] = 0;
    if (v24)
    {
      if (*(v24 + 6) == 1)
      {
        (*(*v24 + 24))(v24);
        MEMORY[0x1CCA65730](v41);
        v25 = v45;
        v45 = 0;
        if (!v25)
        {
          return;
        }

        goto LABEL_44;
      }

      --*(v24 + 6);
    }

    MEMORY[0x1CCA65730](v41);
    v25 = v45;
    v45 = 0;
    if (!v25)
    {
      return;
    }

LABEL_44:
    if (v25[6] == 1)
    {
      (*(*v25 + 8))(v25);
    }

    else
    {
      --v25[6];
    }
  }
}

- (CGSize)containerSize
{
  objc_copyStruct(v4, &self->_containerSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end
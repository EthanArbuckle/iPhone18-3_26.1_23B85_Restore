@interface WebViewPrivate
- (WebViewPrivate)init;
- (id).cxx_construct;
- (void)dealloc;
@end

@implementation WebViewPrivate

- (WebViewPrivate)init
{
  v10.receiver = self;
  v10.super_class = WebViewPrivate;
  v2 = [(WebViewPrivate *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->allowsUndo = 1;
    v2->usesPageCache = 1;
    v2->shouldUpdateWhileOffscreen = 1;
    v2->zoomMultiplier = 1.0;
    v2->zoomsTextOnly = 0;
    v2->interactiveFormValidationEnabled = 0;
    v2->validationMessageTimerMagnification = 50;
    v2->isStopping = 0;
    v2->_geolocationProvider = +[WebGeolocationProviderIOS sharedGeolocationProvider];
    v3->shouldCloseWithWindow = 0;
    ++pluginDatabaseClientCount;
    if (!*MEMORY[0x1E69E26E0])
    {
      v9 = WebCore::AlternativeTextUIController::operatorNewSlow(0x10);
      *v9 = 0;
      *(v9 + 1) = 0;
      ptr = v3->m_alternativeTextUIController.__ptr_;
      v3->m_alternativeTextUIController.__ptr_ = v9;
      if (!ptr)
      {
        return v3;
      }

      goto LABEL_4;
    }

    NonCompact = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E26E0], v4);
    *NonCompact = 0;
    *(NonCompact + 1) = 0;
    ptr = v3->m_alternativeTextUIController.__ptr_;
    v3->m_alternativeTextUIController.__ptr_ = NonCompact;
    if (ptr)
    {
LABEL_4:
      std::default_delete<WebCore::AlternativeTextUIController>::operator()[abi:sn200100](ptr, v6);
    }
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WebViewPrivate;
  [(WebViewPrivate *)&v2 dealloc];
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 8) = 0;
  *(self + 10) = 0;
  *(self + 13) = 0;
  *(self + 26) = 0;
  *(self + 28) = 0;
  *(self + 101) = 0;
  *(self + 104) = 0;
  *(self + 866) = 0;
  *(self + 125) = 0;
  *(self + 8) = 0u;
  *(self + 8) = 0u;
  *(self + 9) = 0u;
  *(self + 20) = 0;
  *(self + 184) = 0u;
  *(self + 760) = 0u;
  *(self + 904) = 0u;
  *(self + 122) = 0;
  *(self + 60) = 0u;
  *(self + 132) = 0;
  *(self + 65) = 0u;
  *(self + 64) = 0u;
  *(self + 140) = 0;
  *(self + 69) = 0u;
  return self;
}

@end
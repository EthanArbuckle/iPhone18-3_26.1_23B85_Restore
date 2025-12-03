@interface WebInspector
- (BOOL)isDebuggingJavaScript;
- (BOOL)isTimelineProfilingEnabled;
- (WebInspector)initWithInspectedWebView:(id)view;
- (void)dealloc;
- (void)evaluateInFrontend:(id)frontend script:(id)script;
- (void)setTimelineProfilingEnabled:(BOOL)enabled;
- (void)showConsole:(id)console;
- (void)showWindow;
- (void)startDebuggingJavaScript:(id)script;
- (void)stopDebuggingJavaScript:(id)script;
- (void)toggleDebuggingJavaScript:(id)script;
@end

@implementation WebInspector

- (WebInspector)initWithInspectedWebView:(id)view
{
  v5.receiver = self;
  v5.super_class = WebInspector;
  result = [(WebInspector *)&v5 init];
  if (result)
  {
    result->_inspectedWebView = view;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WebInspector;
  [(WebInspector *)&v3 dealloc];
}

- (void)showWindow
{
  inspectedWebView = self->_inspectedWebView;
  if (inspectedWebView)
  {
    [inspectedWebView page];
    if (v3)
    {
      WebCore::InspectorController::show(*(v3 + 88));
    }
  }
}

- (void)showConsole:(id)console
{
  [(WebInspector *)self showWindow];
  frontend = self->_frontend;

  [(WebInspectorFrontend *)frontend showConsole];
}

- (BOOL)isDebuggingJavaScript
{
  frontend = self->_frontend;
  if (frontend)
  {
    LOBYTE(frontend) = [(WebInspectorFrontend *)frontend isDebuggingEnabled];
  }

  return frontend;
}

- (void)toggleDebuggingJavaScript:(id)script
{
  [(WebInspector *)self showWindow];
  v4 = [(WebInspector *)self isDebuggingJavaScript]^ 1;
  frontend = self->_frontend;

  [(WebInspectorFrontend *)frontend setDebuggingEnabled:v4];
}

- (void)startDebuggingJavaScript:(id)script
{
  frontend = self->_frontend;
  if (frontend)
  {
    [(WebInspectorFrontend *)frontend setDebuggingEnabled:1];
  }
}

- (void)stopDebuggingJavaScript:(id)script
{
  frontend = self->_frontend;
  if (frontend)
  {
    [(WebInspectorFrontend *)frontend setDebuggingEnabled:0];
  }
}

- (BOOL)isTimelineProfilingEnabled
{
  frontend = self->_frontend;
  if (frontend)
  {
    LOBYTE(frontend) = [(WebInspectorFrontend *)frontend isTimelineProfilingEnabled];
  }

  return frontend;
}

- (void)setTimelineProfilingEnabled:(BOOL)enabled
{
  frontend = self->_frontend;
  if (frontend)
  {
    [(WebInspectorFrontend *)frontend setTimelineProfilingEnabled:enabled];
  }
}

- (void)evaluateInFrontend:(id)frontend script:(id)script
{
  inspectedWebView = self->_inspectedWebView;
  if (inspectedWebView)
  {
    [inspectedWebView page];
    if (v9)
    {
      v6 = *(v9 + 11);
      MEMORY[0x1CCA63A40](&v9, script);
      WebCore::InspectorController::evaluateForTestInFrontend(v6, &v9);
      v8 = v9;
      v9 = 0;
      if (v8)
      {
        if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v7);
        }
      }
    }
  }
}

@end
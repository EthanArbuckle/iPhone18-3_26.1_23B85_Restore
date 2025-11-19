@interface WebInspector
- (BOOL)isDebuggingJavaScript;
- (BOOL)isTimelineProfilingEnabled;
- (WebInspector)initWithInspectedWebView:(id)a3;
- (void)dealloc;
- (void)evaluateInFrontend:(id)a3 script:(id)a4;
- (void)setTimelineProfilingEnabled:(BOOL)a3;
- (void)showConsole:(id)a3;
- (void)showWindow;
- (void)startDebuggingJavaScript:(id)a3;
- (void)stopDebuggingJavaScript:(id)a3;
- (void)toggleDebuggingJavaScript:(id)a3;
@end

@implementation WebInspector

- (WebInspector)initWithInspectedWebView:(id)a3
{
  v5.receiver = self;
  v5.super_class = WebInspector;
  result = [(WebInspector *)&v5 init];
  if (result)
  {
    result->_inspectedWebView = a3;
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

- (void)showConsole:(id)a3
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

- (void)toggleDebuggingJavaScript:(id)a3
{
  [(WebInspector *)self showWindow];
  v4 = [(WebInspector *)self isDebuggingJavaScript]^ 1;
  frontend = self->_frontend;

  [(WebInspectorFrontend *)frontend setDebuggingEnabled:v4];
}

- (void)startDebuggingJavaScript:(id)a3
{
  frontend = self->_frontend;
  if (frontend)
  {
    [(WebInspectorFrontend *)frontend setDebuggingEnabled:1];
  }
}

- (void)stopDebuggingJavaScript:(id)a3
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

- (void)setTimelineProfilingEnabled:(BOOL)a3
{
  frontend = self->_frontend;
  if (frontend)
  {
    [(WebInspectorFrontend *)frontend setTimelineProfilingEnabled:a3];
  }
}

- (void)evaluateInFrontend:(id)a3 script:(id)a4
{
  inspectedWebView = self->_inspectedWebView;
  if (inspectedWebView)
  {
    [inspectedWebView page];
    if (v9)
    {
      v6 = *(v9 + 11);
      MEMORY[0x1CCA63A40](&v9, a4);
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
@interface TSWPEquationInfo
- (TSWPEquationInfo)initWithContext:(id)a3 mathMLNode:(_xmlNode *)a4 fromXMLDoc:(_xmlDoc *)a5;
- (id)copyWithContext:(id)a3;
- (void)dealloc;
@end

@implementation TSWPEquationInfo

- (TSWPEquationInfo)initWithContext:(id)a3 mathMLNode:(_xmlNode *)a4 fromXMLDoc:(_xmlDoc *)a5
{
  if (a4)
  {
    if (a5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x277D6C290] currentHandler];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEquationInfo initWithContext:mathMLNode:fromXMLDoc:]"];
    [v17 handleFailureInFunction:v18 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEquationInfo.m"), 36, @"invalid nil value for '%s'", "mathMLNode"}];
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v19 = [MEMORY[0x277D6C290] currentHandler];
  v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEquationInfo initWithContext:mathMLNode:fromXMLDoc:]"];
  [v19 handleFailureInFunction:v20 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEquationInfo.m"), 37, @"invalid nil value for '%s'", "xmlDoc"}];
LABEL_3:
  v22.receiver = self;
  v22.super_class = TSWPEquationInfo;
  v9 = [(TSDDrawableInfo *)&v22 initWithContext:a3 geometry:0];
  if (v9)
  {
    v21 = 0;
    v10 = [a3 documentRoot];
    if ((objc_opt_respondsToSelector() & 1) == 0 || (v11 = [v10 performSelector:sel_equationEnvironment]) == 0)
    {
      v11 = +[EQKitEnvironment defaultEnvironment];
    }

    v12 = [EQKitEquation equationWithXMLDoc:a5 node:a4 environment:v11 error:&v21];
    v9->_equation = v12;
    if (!v12)
    {
      v13 = [MEMORY[0x277D6C290] currentHandler];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEquationInfo initWithContext:mathMLNode:fromXMLDoc:]"];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEquationInfo.m"];
      [v13 handleFailureInFunction:v14 file:v15 lineNumber:58 description:{@"failed to create equation with error: %@", v21}];
      if (!v9->_equation)
      {

        return 0;
      }
    }
  }

  return v9;
}

- (id)copyWithContext:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSWPEquationInfo;
  v4 = [(TSDDrawableInfo *)&v6 copyWithContext:a3];
  if (v4)
  {
    v4[18] = self->_equation;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPEquationInfo;
  [(TSDDrawableInfo *)&v3 dealloc];
}

@end
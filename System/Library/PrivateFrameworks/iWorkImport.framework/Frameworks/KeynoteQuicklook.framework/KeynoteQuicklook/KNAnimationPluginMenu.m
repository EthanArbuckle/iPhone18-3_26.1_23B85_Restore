@interface KNAnimationPluginMenu
+ (id)animationPluginMenu;
+ (id)localizedStringForDirection:(unint64_t)a3 shortVersion:(BOOL)a4;
- (BOOL)containsDirection:(unint64_t)a3;
- (KNAnimationPluginMenu)init;
- (KNAnimationPluginMenu)initWithCoder:(id)a3;
- (NSArray)directions;
- (NSArray)localizedDirections;
- (id)localizedStringForDirection:(unint64_t)a3;
- (unint64_t)directionForIndex:(unint64_t)a3;
- (unint64_t)indexForDirection:(unint64_t)a3;
- (void)addDirection:(unint64_t)a3 localizedMenuString:(id)a4;
- (void)addDirection:(unint64_t)a3 useShortString:(BOOL)a4;
- (void)copyToInstance:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KNAnimationPluginMenu

- (KNAnimationPluginMenu)init
{
  v12.receiver = self;
  v12.super_class = KNAnimationPluginMenu;
  v2 = [(KNAnimationPluginMenu *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    localizedStringToDirectionMap = v2->_localizedStringToDirectionMap;
    v2->_localizedStringToDirectionMap = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    directionToLocalizedStringMap = v2->_directionToLocalizedStringMap;
    v2->_directionToLocalizedStringMap = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    localizedDirections = v2->_localizedDirections;
    v2->_localizedDirections = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    directions = v2->_directions;
    v2->_directions = v9;

    v2->_defaultDirection = 0;
  }

  return v2;
}

+ (id)animationPluginMenu
{
  v2 = objc_alloc_init(KNAnimationPluginMenu);

  return v2;
}

+ (id)localizedStringForDirection:(unint64_t)a3 shortVersion:(BOOL)a4
{
  v5 = 0;
  if (a3 <= 90)
  {
    switch(a3)
    {
      case 0xBuLL:
        v7 = sub_275DC204C();
        if (a4)
        {
          objc_msgSend_localizedStringForKey_value_table_(v7, v6, @"From Left *Direction*", @"From Left", @"Keynote");
        }

        else
        {
          objc_msgSend_localizedStringForKey_value_table_(v7, v6, @"Left to Right *Direction*", @"Left to Right", @"Keynote");
        }

        goto LABEL_64;
      case 0xCuLL:
        v7 = sub_275DC204C();
        if (a4)
        {
          objc_msgSend_localizedStringForKey_value_table_(v7, v17, @"From Right *Direction*", @"From Right", @"Keynote");
        }

        else
        {
          objc_msgSend_localizedStringForKey_value_table_(v7, v17, @"Right to Left *Direction*", @"Right to Left", @"Keynote");
        }

        goto LABEL_64;
      case 0xDuLL:
        v7 = sub_275DC204C();
        if (a4)
        {
          objc_msgSend_localizedStringForKey_value_table_(v7, v19, @"From Top *Direction*", @"From Top", @"Keynote");
        }

        else
        {
          objc_msgSend_localizedStringForKey_value_table_(v7, v19, @"Top to Bottom *Direction*", @"Top to Bottom", @"Keynote");
        }

        goto LABEL_64;
      case 0xEuLL:
        v7 = sub_275DC204C();
        if (a4)
        {
          objc_msgSend_localizedStringForKey_value_table_(v7, v14, @"From Bottom *Direction*", @"From Bottom", @"Keynote");
        }

        else
        {
          objc_msgSend_localizedStringForKey_value_table_(v7, v14, @"Bottom to Top *Direction*", @"Bottom to Top", @"Keynote");
        }

        goto LABEL_64;
      case 0xFuLL:
      case 0x10uLL:
      case 0x11uLL:
      case 0x12uLL:
      case 0x13uLL:
      case 0x14uLL:
      case 0x19uLL:
      case 0x1AuLL:
      case 0x1BuLL:
      case 0x1CuLL:
      case 0x1DuLL:
      case 0x1EuLL:
      case 0x21uLL:
      case 0x22uLL:
      case 0x23uLL:
      case 0x24uLL:
      case 0x25uLL:
      case 0x26uLL:
      case 0x27uLL:
      case 0x28uLL:
      case 0x2DuLL:
      case 0x2EuLL:
      case 0x2FuLL:
      case 0x30uLL:
      case 0x31uLL:
      case 0x32uLL:
        goto LABEL_65;
      case 0x15uLL:
        v7 = sub_275DC204C();
        if (a4)
        {
          objc_msgSend_localizedStringForKey_value_table_(v7, v16, @"From Top Left *Direction*", @"From Top Left", @"Keynote");
        }

        else
        {
          objc_msgSend_localizedStringForKey_value_table_(v7, v16, @"Top Left to Bottom Right *Direction*", @"Top Left to Bottom Right", @"Keynote");
        }

        goto LABEL_64;
      case 0x16uLL:
        v7 = sub_275DC204C();
        if (a4)
        {
          objc_msgSend_localizedStringForKey_value_table_(v7, v15, @"From Top Right *Direction*", @"From Top Right", @"Keynote");
        }

        else
        {
          objc_msgSend_localizedStringForKey_value_table_(v7, v15, @"Top Right to Bottom Left *Direction*", @"Top Right to Bottom Left", @"Keynote");
        }

        goto LABEL_64;
      case 0x17uLL:
        v7 = sub_275DC204C();
        if (a4)
        {
          objc_msgSend_localizedStringForKey_value_table_(v7, v13, @"From Bottom Left *Direction*", @"From Bottom Left", @"Keynote");
        }

        else
        {
          objc_msgSend_localizedStringForKey_value_table_(v7, v13, @"Bottom Left to Top Right *Direction*", @"Bottom Left to Top Right", @"Keynote");
        }

        goto LABEL_64;
      case 0x18uLL:
        v7 = sub_275DC204C();
        if (a4)
        {
          objc_msgSend_localizedStringForKey_value_table_(v7, v18, @"From Bottom Right *Direction*", @"From Bottom Right", @"Keynote");
        }

        else
        {
          objc_msgSend_localizedStringForKey_value_table_(v7, v18, @"Bottom Right to Top Left *Direction*", @"Bottom Right to Top Left", @"Keynote");
        }

        goto LABEL_64;
      case 0x1FuLL:
        v8 = sub_275DC204C();
        v7 = v8;
        v10 = @"Clockwise *Direction*";
        v11 = @"Clockwise";
        goto LABEL_51;
      case 0x20uLL:
        v8 = sub_275DC204C();
        v7 = v8;
        v10 = @"Counterclockwise *Direction*";
        v11 = @"Counterclockwise";
        goto LABEL_51;
      case 0x29uLL:
        v8 = sub_275DC204C();
        v7 = v8;
        v10 = @"In *Direction*";
        v11 = @"In";
        goto LABEL_51;
      case 0x2AuLL:
        v8 = sub_275DC204C();
        v7 = v8;
        v10 = @"Out *Direction*";
        v11 = @"Out";
        goto LABEL_51;
      case 0x2BuLL:
        v8 = sub_275DC204C();
        v7 = v8;
        v10 = @"Up *Direction*";
        v11 = @"Up";
        goto LABEL_51;
      case 0x2CuLL:
        v8 = sub_275DC204C();
        v7 = v8;
        v10 = @"Down *Direction*";
        v11 = @"Down";
        goto LABEL_51;
      case 0x33uLL:
        v8 = sub_275DC204C();
        v7 = v8;
        v10 = @"Start to End *Direction*";
        v11 = @"Start to End";
        goto LABEL_51;
      case 0x34uLL:
        v8 = sub_275DC204C();
        v7 = v8;
        v10 = @"End to Start *Direction*";
        v11 = @"End to Start";
        goto LABEL_51;
      case 0x35uLL:
        v8 = sub_275DC204C();
        v7 = v8;
        v10 = @"Middle to Ends *Direction*";
        v11 = @"Middle to Ends";
        goto LABEL_51;
      case 0x36uLL:
        v8 = sub_275DC204C();
        v7 = v8;
        v10 = @"Ends to Middle *Direction*";
        v11 = @"Ends to Middle";
        goto LABEL_51;
      default:
        if (a3)
        {
          goto LABEL_65;
        }

        v8 = sub_275DC204C();
        v7 = v8;
        v10 = @"None *Direction*";
        v11 = @"None";
        break;
    }

    goto LABEL_51;
  }

  if (a3 <= 112)
  {
    if (a3 > 92)
    {
      switch(a3)
      {
        case ']':
          v8 = sub_275DC204C();
          v7 = v8;
          v10 = @"Simultaneous *Direction*";
          v11 = @"Simultaneous";
          break;
        case 'o':
          v8 = sub_275DC204C();
          v7 = v8;
          v10 = @"Forward *Direction*";
          v11 = @"Forward";
          break;
        case 'p':
          v8 = sub_275DC204C();
          v7 = v8;
          v10 = @"Backward *Direction*";
          v11 = @"Backward";
          break;
        default:
          goto LABEL_65;
      }

      goto LABEL_51;
    }

    if (a3 != 91)
    {
      v8 = sub_275DC204C();
      v7 = v8;
      v10 = @"Alternating *Direction*";
      v11 = @"Alternating";
      goto LABEL_51;
    }

LABEL_21:
    v8 = sub_275DC204C();
    v7 = v8;
    v10 = @"Random *Direction*";
    v11 = @"Random";
    goto LABEL_51;
  }

  if (a3 <= 114)
  {
    if (a3 != 113)
    {
      v7 = sub_275DC204C();
      if (a4)
      {
        objc_msgSend_localizedStringForKey_value_table_(v7, v12, @"Center *Direction*", @"Center", @"Keynote");
      }

      else
      {
        objc_msgSend_localizedStringForKey_value_table_(v7, v12, @"From Center *Direction*", @"From Center", @"Keynote");
      }

      goto LABEL_64;
    }

    goto LABEL_21;
  }

  switch(a3)
  {
    case 's':
      v7 = sub_275DC204C();
      if (a4)
      {
        objc_msgSend_localizedStringForKey_value_table_(v7, v20, @"Edges *Direction*", @"Edges", @"Keynote");
      }

      else
      {
        objc_msgSend_localizedStringForKey_value_table_(v7, v20, @"From Edges *Direction*", @"From Edges", @"Keynote");
      }

      goto LABEL_64;
    case 'y':
      v8 = sub_275DC204C();
      v7 = v8;
      v10 = @"Gravity *Direction*";
      v11 = @"Gravity";
      break;
    case 'z':
      v8 = sub_275DC204C();
      v7 = v8;
      v10 = @"No Gravity *Direction*";
      v11 = @"No Gravity";
      break;
    default:
      goto LABEL_65;
  }

LABEL_51:
  objc_msgSend_localizedStringForKey_value_table_(v8, v9, v10, v11, @"Keynote");
  v5 = LABEL_64:;

LABEL_65:

  return v5;
}

- (id)localizedStringForDirection:(unint64_t)a3
{
  if ((objc_msgSend_containsDirection_(self, a2, a3) & 1) == 0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[KNAnimationPluginMenu localizedStringForDirection:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationPluginMenu.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 214, 0, "Asking for a direction that is not in the plugin");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v13 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v5, a3);
  v15 = objc_msgSend_objectForKeyedSubscript_(self->_directionToLocalizedStringMap, v14, v13);

  return v15;
}

- (NSArray)localizedDirections
{
  v3 = objc_msgSend_copy(self->_localizedDirections, a2, v2);

  return v3;
}

- (NSArray)directions
{
  v3 = objc_msgSend_copy(self->_directions, a2, v2);

  return v3;
}

- (void)addDirection:(unint64_t)a3 localizedMenuString:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v13 = objc_msgSend_numberWithUnsignedInteger_(v6, v8, a3);
  objc_msgSend_addObject_(self->_localizedDirections, v9, v7);
  objc_msgSend_addObject_(self->_directions, v10, v13);
  objc_msgSend_setObject_forKeyedSubscript_(self->_localizedStringToDirectionMap, v11, v13, v7);
  objc_msgSend_setObject_forKeyedSubscript_(self->_directionToLocalizedStringMap, v12, v7, v13);
}

- (void)addDirection:(unint64_t)a3 useShortString:(BOOL)a4
{
  v4 = a4;
  v7 = objc_opt_class();
  v10 = objc_msgSend_localizedStringForDirection_shortVersion_(v7, v8, a3, v4);
  objc_msgSend_addDirection_localizedMenuString_(self, v9, a3, v10);
}

- (BOOL)containsDirection:(unint64_t)a3
{
  v4 = objc_msgSend_directions(self, a2, a3);
  v6 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v5, a3);
  v8 = objc_msgSend_containsObject_(v4, v7, v6);

  return v8;
}

- (unint64_t)indexForDirection:(unint64_t)a3
{
  v4 = objc_msgSend_directions(self, a2, a3);
  v6 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v5, a3);
  v8 = objc_msgSend_indexOfObject_(v4, v7, v6);

  return v8;
}

- (unint64_t)directionForIndex:(unint64_t)a3
{
  v4 = objc_msgSend_directions(self, a2, a3);
  v6 = objc_msgSend_objectAtIndexedSubscript_(v4, v5, a3);
  v9 = objc_msgSend_intValue(v6, v7, v8);

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v16 = a3;
  v6 = objc_msgSend_localizedDirections(self, v4, v5);
  objc_msgSend_encodeObject_forKey_(v16, v7, v6, @"localizedDirections");

  v10 = objc_msgSend_directions(self, v8, v9);
  objc_msgSend_encodeObject_forKey_(v16, v11, v10, @"directions");

  v14 = objc_msgSend_defaultDirection(self, v12, v13);
  objc_msgSend_encodeInteger_forKey_(v16, v15, v14, @"defaultDirection");
}

- (KNAnimationPluginMenu)initWithCoder:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_init(self, v5, v6);
  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v12 = objc_msgSend_setWithObjects_(v8, v11, v9, v10, 0);
  v14 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v13, v12, @"localizedDirections");

  v15 = MEMORY[0x277CBEB98];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v19 = objc_msgSend_setWithObjects_(v15, v18, v16, v17, 0);
  v21 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v20, v19, @"directions");

  if (objc_msgSend_count(v21, v22, v23))
  {
    v25 = 0;
    do
    {
      v26 = objc_msgSend_objectAtIndexedSubscript_(v21, v24, v25);
      v29 = objc_msgSend_integerValue(v26, v27, v28);
      v31 = objc_msgSend_objectAtIndexedSubscript_(v14, v30, v25);
      objc_msgSend_addDirection_localizedMenuString_(v7, v32, v29, v31);

      ++v25;
    }

    while (v25 < objc_msgSend_count(v21, v33, v34));
  }

  v35 = objc_msgSend_decodeIntegerForKey_(v4, v24, @"defaultDirection");
  objc_msgSend_setDefaultDirection_(v7, v36, v35);

  return v7;
}

- (void)copyToInstance:(id)a3
{
  v25 = a3;
  if (objc_msgSend_count(self, v4, v5))
  {
    v8 = 0;
    do
    {
      v9 = objc_msgSend_directions(self, v6, v7);
      v11 = objc_msgSend_objectAtIndexedSubscript_(v9, v10, v8);
      v14 = objc_msgSend_integerValue(v11, v12, v13);
      v17 = objc_msgSend_localizedDirections(self, v15, v16);
      v19 = objc_msgSend_objectAtIndexedSubscript_(v17, v18, v8);
      objc_msgSend_addDirection_localizedMenuString_(v25, v20, v14, v19);

      ++v8;
    }

    while (v8 < objc_msgSend_count(self, v21, v22));
  }

  v23 = objc_msgSend_defaultDirection(self, v6, v7);
  objc_msgSend_setDefaultDirection_(v25, v24, v23);
}

@end
BOOL sub_12EC(void *a1, uint64_t a2, __IOHIDServiceClient *a3)
{
  if (IOHIDEventGetType() != 17)
  {
    return 0;
  }

  v5 = a1;
  v6 = IOHIDServiceClientCopyProperty(a3, @"VendorID");
  v7 = IOHIDServiceClientCopyProperty(a3, @"ProductID");
  v8 = [v6 intValue];
  if (v8 == [v5 vendorId])
  {
    v9 = [v7 intValue];
    v10 = v9 == [v5 productId];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_1F60(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = _SCROD_LOG();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = a1;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Device removed: %@", &v5, 0xCu);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"SCROBrailleDriverProtocolUnloadNotification" object:a1 userInfo:0];

  objc_autoreleasePoolPop(v2);
}

void sub_2048(void *a1, uint64_t a2, uint64_t a3, __IOHIDValue *a4)
{
  v5 = a1;
  Element = IOHIDValueGetElement(a4);
  Usage = IOHIDElementGetUsage(Element);
  UsagePage = IOHIDElementGetUsagePage(Element);
  v9 = _SCROD_LOG();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 67109376;
    LODWORD(v30[0]) = Usage;
    WORD2(v30[0]) = 1024;
    *(v30 + 6) = UsagePage;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "value callback: %d %d", &v29, 0xEu);
  }

  v10 = *(v5 + 89);
  if (v10 == 1 && UsagePage == 65)
  {
    if ((Usage & 0xFFFFFF00) == 0x100)
    {
      v11 = Usage << 8;
      if (IOHIDValueGetIntegerValue(a4) <= 0)
      {
        v11 = (v11 - 0x10000);
        goto LABEL_39;
      }

LABEL_40:
      [v5[10] lock];
      v16 = v5[9];
      v17 = [NSNumber numberWithUnsignedInt:v11];
      [v16 addObject:v17];

      [v5[10] unlock];
      goto LABEL_41;
    }

LABEL_20:
    if (IOHIDValueGetIntegerValue(a4) <= 0)
    {
      v13 = 6;
    }

    else
    {
      v13 = 65542;
    }

    v11 = v13 | (16 * Usage);
    goto LABEL_40;
  }

  if (UsagePage != 65 || (v10 & 1) != 0)
  {
    if (UsagePage != 7)
    {
      if (UsagePage != 9)
      {
        goto LABEL_41;
      }

      if (*(v5 + 89) && Usage - 1 <= 7)
      {
        v12 = (Usage << 8) - 256;
        goto LABEL_17;
      }

      if (v10)
      {
        goto LABEL_41;
      }

      Parent = IOHIDElementGetParent(Element);
      if (Parent)
      {
        v15 = Parent;
        while (IOHIDElementGetType(v15) != kIOHIDElementTypeCollection || IOHIDElementGetUsagePage(v15) != 65 || IOHIDElementGetUsage(v15) != 6)
        {
          v15 = IOHIDElementGetParent(v15);
          if (!v15)
          {
            goto LABEL_38;
          }
        }

        v11 = [v5 _eventForScreenReaderControl:a4];
        if (v11)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_38;
    }

    if (!*(v5 + 89) || Usage != 44)
    {
      goto LABEL_41;
    }

LABEL_26:
    if (IOHIDValueGetIntegerValue(a4) <= 0)
    {
      v11 = 2050;
    }

    else
    {
      v11 = 67586;
    }

    goto LABEL_40;
  }

  if (Usage - 513 <= 7)
  {
    v12 = (Usage << 8) - 131328;
LABEL_17:
    v11 = v12 & 0xFFFEFFFF | ((IOHIDValueGetIntegerValue(a4) > 0) << 16) | 2;
    goto LABEL_40;
  }

  if (Usage - 521 <= 2)
  {
    goto LABEL_26;
  }

  if ((Usage & 0xFFFFFFFE) == 0x21A)
  {
    goto LABEL_20;
  }

  if (Usage - 528 <= 0xE)
  {
LABEL_38:
    v11 = [v5 _eventForGenericControl:a4];
    goto LABEL_39;
  }

  if (Usage == 5)
  {
    IntegerValue = IOHIDValueGetIntegerValue(a4);
    v24 = IntegerValue;
    v25 = 255;
    if (IntegerValue < 255)
    {
      v25 = IntegerValue;
    }

    v5[13] = (v25 & ~(v25 >> 63));
    v26 = _SCROD_LOG();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [NSNumber numberWithLong:v24];
      v29 = 138412290;
      v30[0] = v27;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Number of Braille cells set to %@", &v29, 0xCu);
    }

    v28 = +[NSNotificationCenter defaultCenter];
    [v28 postNotificationName:@"SCROBrailleDriverProtocolConfigurationChangeNotification" object:v5 userInfo:0];

    goto LABEL_41;
  }

  if (Usage != 256)
  {
    goto LABEL_41;
  }

  v18 = IOHIDElementGetParent(Element);
  v19 = IOHIDElementGetChildren(v18);
  if ([v19 count])
  {
    v20 = 0;
    v21 = 0;
    while (1)
    {
      Cookie = IOHIDElementGetCookie([v19 objectAtIndex:v21]);
      if (Cookie == IOHIDElementGetCookie(Element))
      {
        break;
      }

      ++v21;
      v20 += 256;
      if (v21 >= [v19 count])
      {
        goto LABEL_48;
      }
    }

    v11 = v20 & 0xFFFEFF00 | ((IOHIDValueGetIntegerValue(a4) > 0) << 16);
  }

  else
  {
LABEL_48:
    v11 = 0;
  }

LABEL_39:
  if (v11)
  {
    goto LABEL_40;
  }

LABEL_41:
}

void sub_2D38(id a1)
{
  v1 = [NSMutableIndexSet indexSetWithIndexesInRange:768, 113];
  [v1 removeIndex:768];
  [v1 removeIndex:784];
  [v1 removeIndex:800];
  [v1 removeIndex:816];
  [v1 removeIndex:832];
  [v1 removeIndexesInRange:{779, 5}];
  [v1 removeIndexesInRange:{796, 4}];
  [v1 removeIndexesInRange:{808, 8}];
  [v1 removeIndexesInRange:{822, 10}];
  +[NSMutableArray array];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_2E8C;
  v2 = v5[3] = &unk_8308;
  v6 = v2;
  [v1 enumerateIndexesUsingBlock:v5];
  v3 = qword_CF70;
  qword_CF70 = v2;
  v4 = v2;
}

void sub_2E8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithUnsignedInteger:a2];
  [v2 addObject:v3];
}

id sub_2EEC(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 count] <= a2)
  {
    v5 = [qword_CF70 mutableCopy];
    [v5 removeObjectsInArray:v4];
    v7 = [v5 objectAtIndexedSubscript:{a2 % objc_msgSend(v5, "count")}];
    v6 = [v7 unsignedIntegerValue];
  }

  else
  {
    v5 = [v4 objectAtIndexedSubscript:a2];
    v6 = [v5 unsignedIntegerValue];
  }

  return v6;
}

uint64_t sub_3B04(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v5 collectionUsage]);
  v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [&off_8D18 indexOfObject:v7] != 0x7FFFFFFFFFFFFFFFLL);

  v9 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v6 collectionUsage]);
  v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [&off_8D18 indexOfObject:v9] != 0x7FFFFFFFFFFFFFFFLL);

  v11 = [v8 compare:v10];
  if (v11)
  {
    v12 = v11;
    goto LABEL_3;
  }

  v14 = [v5 usagePage];
  if (v14 != [v6 usagePage] || !objc_msgSend(*(a1 + 32), "usage:isSameClassAsUsage:forUsagePage:", objc_msgSend(v5, "usage"), objc_msgSend(v6, "usage"), objc_msgSend(v5, "usagePage")) || (+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", objc_msgSend(v6, "instanceNumber")), v15 = objc_claimAutoreleasedReturnValue(), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", objc_msgSend(v5, "instanceNumber")), v16 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v15, "compare:", v16), v16, v15, !v12))
  {
    if ([v5 controlType] == &dword_0 + 1)
    {
      v17 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v5 usage]);
      if ([&off_8D30 indexOfObject:v17] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = [NSNumber numberWithUnsignedInteger:0];
      }

      else
      {
        v20 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v5 usage]);
        v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [&off_8D30 indexOfObject:v20]);
      }

      v21 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v6 usage]);
      if ([&off_8D30 indexOfObject:v21] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v22 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v6 usage]);
        v23 = &off_8D30;
LABEL_24:
        v28 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v23 indexOfObject:v22]);

LABEL_25:
        v12 = [v18 compare:v28];

        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_26;
      }
    }

    else
    {
      if ([v5 controlType] != &dword_0 + 2)
      {
        if (![v5 controlType])
        {
          v24 = [v5 usagePage];
          if (v24 != [v6 usagePage])
          {
            if ([v5 usagePage] == 65)
            {
              v12 = 1;
              goto LABEL_3;
            }

            if ([v6 usagePage] == 65)
            {
              v12 = -1;
              goto LABEL_3;
            }
          }

          v25 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v5 usage]);
          if ([&off_8D60 indexOfObject:v25] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v26 = [NSNumber numberWithUnsignedInteger:0];
          }

          else
          {
            v29 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v5 usage]);
            v26 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [&off_8D60 indexOfObject:v29]);
          }

          v30 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v6 usage]);
          if ([&off_8D60 indexOfObject:v30] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v31 = [NSNumber numberWithUnsignedInteger:0];
          }

          else
          {
            v32 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v6 usage]);
            v31 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [&off_8D60 indexOfObject:v32]);
          }

          v33 = [v26 compare:v31];
          if (v33)
          {
            v12 = v33;
          }

          else if ([v5 usagePage] != 9 || objc_msgSend(v6, "usagePage") != 9 || (+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", objc_msgSend(v6, "usage")), v34 = objc_claimAutoreleasedReturnValue(), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", objc_msgSend(v5, "usage")), v35 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v34, "compare:", v35), v35, v34, !v12))
          {

            goto LABEL_26;
          }

          goto LABEL_3;
        }

LABEL_26:
        v12 = 0;
        goto LABEL_3;
      }

      v19 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v5 usage]);
      if ([&off_8D48 indexOfObject:v19] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = [NSNumber numberWithUnsignedInteger:0];
      }

      else
      {
        v27 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v5 usage]);
        v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [&off_8D48 indexOfObject:v27]);
      }

      v21 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v6 usage]);
      if ([&off_8D48 indexOfObject:v21] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v22 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v6 usage]);
        v23 = &off_8D48;
        goto LABEL_24;
      }
    }

    v28 = [NSNumber numberWithUnsignedInteger:0];
    goto LABEL_25;
  }

LABEL_3:

  return v12;
}

void sub_4CC8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = _SCROD_LOG();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [NSNumber numberWithInt:a2];
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Failed to set value for display cell element (result %@)", &v5, 0xCu);
    }
  }
}

void sub_4E1C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SCROGenericHIDDriver.m" lineNumber:1317 description:@"Non-unicode character has been passed to setMainCellsArray."];
}
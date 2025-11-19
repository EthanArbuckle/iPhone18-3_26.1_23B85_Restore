uint64_t *sub_2763CE5E0(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2763BD538(result);

    return sub_2763CB73C(v4, a2);
  }

  return result;
}

uint64_t sub_2763CE62C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = TSDSOS::SpecLineEndArchive::IsInitialized(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = TSDSOS::SpecLineEndArchive::IsInitialized(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = TSDSOS::SpecStrokeArchive::IsInitialized(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = TSDSOS::SpecLineEndArchive::IsInitialized(*(a1 + 80));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) != 0)
  {
    result = TSDSOS::SpecLineEndArchive::IsInitialized(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20) != 0)
  {
    result = TSDSOS::SpecShadowArchive::IsInitialized(*(a1 + 96));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 104));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 112));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100) != 0)
  {
    result = TSDSOS::SpecStrokeArchive::IsInitialized(*(a1 + 120));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x200) != 0)
  {
    result = TSDSOS::SpecStrokeArchive::IsInitialized(*(a1 + 128));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x400) != 0)
  {
    result = TSDSOS::SpecFillArchive::IsInitialized(*(a1 + 136));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x800) != 0)
  {
    result = TSDSOS::SpecFillArchive::IsInitialized(*(a1 + 144));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x1000) != 0)
  {
    result = TSDSOS::SpecFillArchive::IsInitialized(*(a1 + 152));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x2000) != 0)
  {
    result = TSDSOS::SpecFillArchive::IsInitialized(*(a1 + 160));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x4000) != 0)
  {
    result = TSDSOS::SpecFillArchive::IsInitialized(*(a1 + 168));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x8000) != 0)
  {
    result = TSDSOS::SpecFillArchive::IsInitialized(*(a1 + 176));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10000) != 0)
  {
    result = TSDSOS::SpecFillArchive::IsInitialized(*(a1 + 184));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20000) != 0)
  {
    result = TSDSOS::SpecFillArchive::IsInitialized(*(a1 + 192));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40000) != 0)
  {
    result = TSDSOS::SpecFillArchive::IsInitialized(*(a1 + 200));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80000) != 0)
  {
    result = TSDSOS::SpecFillArchive::IsInitialized(*(a1 + 208));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100000) != 0)
  {
    result = TSDSOS::SpecFillArchive::IsInitialized(*(a1 + 216));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x200000) != 0)
  {
    result = TSDSOS::SpecFillArchive::IsInitialized(*(a1 + 224));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x400000) != 0)
  {
    result = TSDSOS::SpecFillArchive::IsInitialized(*(a1 + 232));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x800000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 240));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x1000000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 248));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x2000000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 256));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x4000000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 264));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x8000000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 272));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10000000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 280));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20000000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 288));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40000000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 296));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80000000) == 0 || (result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 304)), result))
  {
    v4 = *(a1 + 20);
    if (v4)
    {
      result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 312));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 2) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 320));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 4) != 0)
    {
      result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 328));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 8) != 0)
    {
      result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 336));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x10) != 0)
    {
      result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 344));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x20) != 0)
    {
      result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 352));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x40) != 0)
    {
      result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 360));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x80) != 0)
    {
      result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 368));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x100) != 0)
    {
      result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 376));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x200) != 0)
    {
      result = TSDSOS::SpecShadowArchive::IsInitialized(*(a1 + 384));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x400) != 0)
    {
      result = TSDSOS::SpecShadowArchive::IsInitialized(*(a1 + 392));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x800) != 0)
    {
      result = TSDSOS::SpecShadowArchive::IsInitialized(*(a1 + 400));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x1000) != 0)
    {
      result = TSDSOS::SpecShadowArchive::IsInitialized(*(a1 + 408));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x2000) != 0)
    {
      result = TSDSOS::SpecShadowArchive::IsInitialized(*(a1 + 416));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x4000) != 0)
    {
      result = TSDSOS::SpecShadowArchive::IsInitialized(*(a1 + 424));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x8000) != 0)
    {
      result = TSDSOS::SpecShadowArchive::IsInitialized(*(a1 + 432));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x10000) != 0)
    {
      result = TSDSOS::SpecShadowArchive::IsInitialized(*(a1 + 440));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x20000) != 0)
    {
      result = TSDSOS::SpecShadowArchive::IsInitialized(*(a1 + 448));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x40000) != 0)
    {
      result = TSDSOS::SpecShadowArchive::IsInitialized(*(a1 + 456));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x80000) != 0)
    {
      result = TSDSOS::SpecShadowArchive::IsInitialized(*(a1 + 464));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x100000) != 0)
    {
      result = TSDSOS::SpecShadowArchive::IsInitialized(*(a1 + 472));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x200000) != 0)
    {
      result = TSDSOS::SpecShadowArchive::IsInitialized(*(a1 + 480));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x400000) != 0)
    {
      result = TSDSOS::SpecShadowArchive::IsInitialized(*(a1 + 488));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x800000) != 0)
    {
      result = TSDSOS::SpecShadowArchive::IsInitialized(*(a1 + 496));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x1000000) != 0)
    {
      result = TSDSOS::SpecShadowArchive::IsInitialized(*(a1 + 504));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x2000000) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(a1 + 512));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x4000000) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(a1 + 520));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x8000000) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(a1 + 528));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x10000000) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(a1 + 536));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x20000000) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(a1 + 544));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x40000000) != 0)
    {
      result = TSDSOS::SpecStrokeArchive::IsInitialized(*(a1 + 552));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x80000000) == 0 || (result = TSDSOS::SpecStrokeArchive::IsInitialized(*(a1 + 560)), result))
    {
      v5 = *(a1 + 24);
      if (v5)
      {
        result = TSDSOS::SpecStrokeArchive::IsInitialized(*(a1 + 568));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 2) != 0)
      {
        result = TSDSOS::SpecStrokeArchive::IsInitialized(*(a1 + 576));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 4) != 0)
      {
        result = TSDSOS::SpecStrokeArchive::IsInitialized(*(a1 + 584));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 8) != 0)
      {
        result = TSDSOS::SpecFillArchive::IsInitialized(*(a1 + 592));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x10) != 0)
      {
        result = TSDSOS::SpecFillArchive::IsInitialized(*(a1 + 600));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x20) != 0)
      {
        result = TSDSOS::SpecFillArchive::IsInitialized(*(a1 + 608));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x40) != 0)
      {
        result = TSDSOS::SpecFillArchive::IsInitialized(*(a1 + 616));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x80) != 0)
      {
        result = TSDSOS::SpecFillArchive::IsInitialized(*(a1 + 624));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x100) != 0)
      {
        result = TSDSOS::SpecFillArchive::IsInitialized(*(a1 + 632));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x200) != 0)
      {
        result = TSDSOS::SpecFillArchive::IsInitialized(*(a1 + 640));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x400) != 0)
      {
        result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 648));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x800) != 0)
      {
        result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 656));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x1000) != 0)
      {
        result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 664));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x2000) != 0)
      {
        result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 672));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x4000) != 0)
      {
        result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 680));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x8000) != 0)
      {
        result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 688));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x10000) != 0)
      {
        result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 696));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x20000) != 0)
      {
        result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 704));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x40000) != 0)
      {
        result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 712));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x80000) != 0)
      {
        result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 720));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x100000) != 0)
      {
        result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 728));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x200000) != 0)
      {
        result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 736));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x400000) != 0)
      {
        result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 744));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x800000) != 0)
      {
        result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 752));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x1000000) != 0)
      {
        result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 760));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x2000000) != 0)
      {
        result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 768));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x4000000) != 0)
      {
        result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 776));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x8000000) != 0)
      {
        result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 784));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x10000000) != 0)
      {
        result = TSDSOS::SpecStrokeArchive::IsInitialized(*(a1 + 792));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x20000000) != 0)
      {
        result = TSDSOS::SpecStrokeArchive::IsInitialized(*(a1 + 800));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x40000000) != 0)
      {
        result = TSDSOS::SpecStrokeArchive::IsInitialized(*(a1 + 808));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x80000000) == 0 || (result = TSDSOS::SpecStrokeArchive::IsInitialized(*(a1 + 816)), result))
      {
        v6 = *(a1 + 28);
        if (v6)
        {
          result = TSDSOS::SpecStrokeArchive::IsInitialized(*(a1 + 824));
          if (!result)
          {
            return result;
          }

          v6 = *(a1 + 28);
        }

        if ((v6 & 2) != 0)
        {
          result = TSDSOS::SpecStrokeArchive::IsInitialized(*(a1 + 832));
          if (!result)
          {
            return result;
          }

          v6 = *(a1 + 28);
        }

        if ((v6 & 4) != 0)
        {
          result = TSDSOS::SpecStrokeArchive::IsInitialized(*(a1 + 840));
          if (!result)
          {
            return result;
          }

          v6 = *(a1 + 28);
        }

        if ((v6 & 8) != 0)
        {
          result = TSDSOS::SpecShadowArchive::IsInitialized(*(a1 + 848));
          if (!result)
          {
            return result;
          }

          v6 = *(a1 + 28);
        }

        if ((v6 & 0x10) != 0)
        {
          result = TSDSOS::SpecStrokeArchive::IsInitialized(*(a1 + 856));
          if (!result)
          {
            return result;
          }

          v6 = *(a1 + 28);
        }

        if ((v6 & 0x20) != 0)
        {
          result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 864));
          if (!result)
          {
            return result;
          }

          v6 = *(a1 + 28);
        }

        if ((v6 & 0x40) != 0)
        {
          result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 872));
          if (!result)
          {
            return result;
          }

          v6 = *(a1 + 28);
        }

        if ((v6 & 0x80) != 0)
        {
          result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 880));
          if (!result)
          {
            return result;
          }

          v6 = *(a1 + 28);
        }

        if ((v6 & 0x100) != 0)
        {
          result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 888));
          if (!result)
          {
            return result;
          }

          v6 = *(a1 + 28);
        }

        if ((v6 & 0x200) != 0)
        {
          result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 896));
          if (!result)
          {
            return result;
          }

          v6 = *(a1 + 28);
        }

        if ((v6 & 0x400) != 0)
        {
          result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 904));
          if (!result)
          {
            return result;
          }

          v6 = *(a1 + 28);
        }

        if ((v6 & 0x800) != 0)
        {
          result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 912));
          if (!result)
          {
            return result;
          }

          v6 = *(a1 + 28);
        }

        if ((v6 & 0x1000) != 0)
        {
          result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 920));
          if (!result)
          {
            return result;
          }

          v6 = *(a1 + 28);
        }

        if ((v6 & 0x2000) != 0)
        {
          result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 928));
          if (!result)
          {
            return result;
          }

          v6 = *(a1 + 28);
        }

        if ((v6 & 0x4000) != 0)
        {
          result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 936));
          if (!result)
          {
            return result;
          }

          v6 = *(a1 + 28);
        }

        if ((v6 & 0x8000) != 0)
        {
          result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 944));
          if (!result)
          {
            return result;
          }

          v6 = *(a1 + 28);
        }

        if ((v6 & 0x10000) != 0)
        {
          result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 952));
          if (!result)
          {
            return result;
          }

          v6 = *(a1 + 28);
        }

        if ((v6 & 0x20000) != 0)
        {
          result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 960));
          if (!result)
          {
            return result;
          }

          v6 = *(a1 + 28);
        }

        if ((v6 & 0x40000) != 0)
        {
          result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 968));
          if (!result)
          {
            return result;
          }

          v6 = *(a1 + 28);
        }

        if ((v6 & 0x80000) != 0)
        {
          result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 976));
          if (!result)
          {
            return result;
          }

          v6 = *(a1 + 28);
        }

        if ((v6 & 0x100000) != 0)
        {
          result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 984));
          if (!result)
          {
            return result;
          }

          v6 = *(a1 + 28);
        }

        if ((v6 & 0x200000) == 0)
        {
          return 1;
        }

        result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 992));
        if (result)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t *sub_2763CEFC0(uint64_t *a1)
{
  sub_2763CEFF4(a1);
  sub_2763941F4(a1 + 1);
  return a1;
}

uint64_t *sub_2763CEFF4(uint64_t *result)
{
  if (result != &qword_2812EF540)
  {
    v1 = result;
    if (result[4])
    {
      v2 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v2, 0x10A1C40D4912B22);
    }

    v3 = v1[5];
    if (v3)
    {
      v4 = sub_276396A48(v3);
      MEMORY[0x277C98580](v4, 0x10A1C40D4912B22);
    }

    v5 = v1[6];
    if (v5)
    {
      v6 = sub_276396A48(v5);
      MEMORY[0x277C98580](v6, 0x10A1C40D4912B22);
    }

    v7 = v1[7];
    if (v7)
    {
      v8 = sub_276396A48(v7);
      MEMORY[0x277C98580](v8, 0x10A1C40D4912B22);
    }

    v9 = v1[8];
    if (v9)
    {
      v10 = sub_276396A48(v9);
      MEMORY[0x277C98580](v10, 0x10A1C40D4912B22);
    }

    v11 = v1[9];
    if (v11)
    {
      v12 = sub_276396A48(v11);
      MEMORY[0x277C98580](v12, 0x10A1C40D4912B22);
    }

    v13 = v1[10];
    if (v13)
    {
      v14 = sub_276396A48(v13);
      MEMORY[0x277C98580](v14, 0x10A1C40D4912B22);
    }

    if (v1[11])
    {
      v15 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v15, 0x10A1C40D4912B22);
    }

    if (v1[12])
    {
      v16 = MEMORY[0x277C97810]();
      MEMORY[0x277C98580](v16, 0x10A1C404E50D5EBLL);
    }

    if (v1[13])
    {
      v17 = MEMORY[0x277C97890]();
      MEMORY[0x277C98580](v17, 0x10A1C4030AC051BLL);
    }

    if (v1[14])
    {
      v18 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v18, 0x10A1C40D4912B22);
    }

    if (v1[15])
    {
      v19 = MEMORY[0x277C97850]();
      MEMORY[0x277C98580](v19, 0x10A1C4034CD354FLL);
    }

    if (v1[16])
    {
      v20 = MEMORY[0x277C97890]();
      MEMORY[0x277C98580](v20, 0x10A1C4030AC051BLL);
    }

    if (v1[17])
    {
      v21 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v21, 0x10A1C40D4912B22);
    }

    if (v1[18])
    {
      v22 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v22, 0x10A1C40D4912B22);
    }

    if (v1[19])
    {
      v23 = MEMORY[0x277C97810]();
      MEMORY[0x277C98580](v23, 0x10A1C404E50D5EBLL);
    }

    if (v1[20])
    {
      v24 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v24, 0x10A1C40D4912B22);
    }

    if (v1[21])
    {
      v25 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v25, 0x10A1C40D4912B22);
    }

    if (v1[22])
    {
      v26 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v26, 0x10A1C40D4912B22);
    }

    if (v1[23])
    {
      v27 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v27, 0x10A1C40D4912B22);
    }

    if (v1[24])
    {
      v28 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v28, 0x10A1C40D4912B22);
    }

    if (v1[25])
    {
      v29 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v29, 0x10A1C40D4912B22);
    }

    if (v1[26])
    {
      v30 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v30, 0x10A1C40D4912B22);
    }

    if (v1[27])
    {
      v31 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v31, 0x10A1C40D4912B22);
    }

    if (v1[28])
    {
      v32 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v32, 0x10A1C40D4912B22);
    }

    if (v1[29])
    {
      v33 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v33, 0x10A1C40D4912B22);
    }

    if (v1[30])
    {
      v34 = MEMORY[0x277C97950]();
      MEMORY[0x277C98580](v34, 0x10A1C40D4912B22);
    }

    result = v1[31];
    if (result)
    {
      MEMORY[0x277C97A10]();

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_2763CF2B8(uint64_t *a1)
{
  sub_2763CEFC0(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_2763CF2F8(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(result[4]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_51;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_276396AEC(v1[5]);
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = sub_276396AEC(v1[6]);
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = sub_276396AEC(v1[7]);
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_54:
    result = sub_276396AEC(v1[9]);
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_55;
  }

LABEL_53:
  result = sub_276396AEC(v1[8]);
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_54;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_55:
  result = sub_276396AEC(v1[10]);
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    result = TSSSOS::SpecBoolArchive::Clear(v1[11]);
  }

LABEL_11:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v2 & 0x100) != 0)
  {
    result = TSDSOS::SpecFillArchive::Clear(v1[12]);
    if ((v2 & 0x200) == 0)
    {
LABEL_14:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_59;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  result = TSDSOS::SpecStrokeArchive::Clear(v1[13]);
  if ((v2 & 0x400) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[14]);
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = TSDSOS::SpecShadowArchive::Clear(v1[15]);
  if ((v2 & 0x1000) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_62;
  }

LABEL_61:
  result = TSDSOS::SpecStrokeArchive::Clear(v1[16]);
  if ((v2 & 0x2000) == 0)
  {
LABEL_18:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_63;
  }

LABEL_62:
  result = TSSSOS::SpecBoolArchive::Clear(v1[17]);
  if ((v2 & 0x4000) == 0)
  {
LABEL_19:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_63:
  result = TSSSOS::SpecIntegerArchive::Clear(v1[18]);
  if ((v2 & 0x8000) != 0)
  {
LABEL_20:
    result = TSDSOS::SpecFillArchive::Clear(v1[19]);
  }

LABEL_21:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_31;
  }

  if ((v2 & 0x10000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(v1[20]);
    if ((v2 & 0x20000) == 0)
    {
LABEL_24:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_67;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_24;
  }

  result = TSSSOS::SpecDoubleArchive::Clear(v1[21]);
  if ((v2 & 0x40000) == 0)
  {
LABEL_25:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_68;
  }

LABEL_67:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[22]);
  if ((v2 & 0x80000) == 0)
  {
LABEL_26:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_69;
  }

LABEL_68:
  result = TSSSOS::SpecBoolArchive::Clear(v1[23]);
  if ((v2 & 0x100000) == 0)
  {
LABEL_27:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_70;
  }

LABEL_69:
  result = TSSSOS::SpecBoolArchive::Clear(v1[24]);
  if ((v2 & 0x200000) == 0)
  {
LABEL_28:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_71;
  }

LABEL_70:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[25]);
  if ((v2 & 0x400000) == 0)
  {
LABEL_29:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_71:
  result = TSSSOS::SpecBoolArchive::Clear(v1[26]);
  if ((v2 & 0x800000) != 0)
  {
LABEL_30:
    result = TSSSOS::SpecDoubleArchive::Clear(v1[27]);
  }

LABEL_31:
  if ((v2 & 0xF000000) == 0)
  {
    goto LABEL_37;
  }

  if ((v2 & 0x1000000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(v1[28]);
    if ((v2 & 0x2000000) == 0)
    {
LABEL_34:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_75;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_34;
  }

  result = TSSSOS::SpecIntegerArchive::Clear(v1[29]);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_35:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_75:
  result = TSSSOS::SpecColorArchive::Clear(v1[30]);
  if ((v2 & 0x8000000) != 0)
  {
LABEL_36:
    result = TSSSOS::SpecIntegerArchive::Clear(v1[31]);
  }

LABEL_37:
  if (v2 >> 28)
  {
    *(v1 + 64) = 0;
  }

  v3 = *(v1 + 5);
  if (v3)
  {
    *(v1 + 260) = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    *(v1 + 268) = 0;
  }

  if ((v3 & 0xFF0000) != 0)
  {
    *(v1 + 276) = 0;
  }

  v5 = *(v1 + 8);
  v4 = v1 + 1;
  v4[1] = 0;
  if (v5)
  {

    return sub_2763D4FD4(v4);
  }

  return result;
}

google::protobuf::internal *sub_2763CF560(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v209 = a2;
  if ((sub_2763D4D98(a3, &v209) & 1) == 0)
  {
    while (1)
    {
      v6 = (v209 + 1);
      LODWORD(v7) = *v209;
      if (*v209 < 0)
      {
        v7 = (v7 + (*v6 << 7) - 128);
        if (*v6 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v209, v7);
          v209 = TagFallback;
          if (!TagFallback)
          {
            return 0;
          }

          v6 = TagFallback;
          goto LABEL_7;
        }

        v6 = (v209 + 2);
      }

      v209 = v6;
LABEL_7:
      switch(v7 >> 3)
      {
        case 1u:
          if (v7 != 10)
          {
            goto LABEL_307;
          }

          *(a1 + 16) |= 1u;
          v8 = *(a1 + 32);
          if (v8)
          {
            goto LABEL_298;
          }

          v9 = *(a1 + 8);
          if (v9)
          {
            v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
          }

          v10 = MEMORY[0x277C97C40](v9);
          LODWORD(v8) = v10;
          *(a1 + 32) = v10;
          goto LABEL_297;
        case 2u:
          if (v7 != 16)
          {
            goto LABEL_307;
          }

          *(a1 + 16) |= 0x10000000u;
          v81 = (v6 + 1);
          v80 = *v6;
          if ((v80 & 0x8000000000000000) == 0)
          {
            goto LABEL_149;
          }

          v82 = *v81;
          v80 = (v82 << 7) + v80 - 128;
          if (v82 < 0)
          {
            v181 = google::protobuf::internal::VarintParseSlow64(v6, v80);
            v209 = v181;
            *(a1 + 256) = v182 != 0;
            if (!v181)
            {
              return 0;
            }
          }

          else
          {
            v81 = (v6 + 2);
LABEL_149:
            v209 = v81;
            *(a1 + 256) = v80 != 0;
          }

          goto LABEL_300;
        case 3u:
          if (v7 != 26)
          {
            goto LABEL_307;
          }

          *(a1 + 16) |= 2u;
          v56 = *(a1 + 40);
          if (v56)
          {
            goto LABEL_208;
          }

          v70 = *(a1 + 8);
          if (v70)
          {
            v70 = *(v70 & 0xFFFFFFFFFFFFFFFELL);
          }

          v56 = sub_2763D3E1C(v70);
          *(a1 + 40) = v56;
          goto LABEL_207;
        case 4u:
          if (v7 != 32)
          {
            goto LABEL_307;
          }

          *(a1 + 16) |= 0x20000000u;
          v75 = (v6 + 1);
          v74 = *v6;
          if ((v74 & 0x8000000000000000) == 0)
          {
            goto LABEL_139;
          }

          v76 = *v75;
          v74 = (v76 << 7) + v74 - 128;
          if (v76 < 0)
          {
            v177 = google::protobuf::internal::VarintParseSlow64(v6, v74);
            v209 = v177;
            *(a1 + 257) = v178 != 0;
            if (!v177)
            {
              return 0;
            }
          }

          else
          {
            v75 = (v6 + 2);
LABEL_139:
            v209 = v75;
            *(a1 + 257) = v74 != 0;
          }

          goto LABEL_300;
        case 5u:
          if (v7 != 42)
          {
            goto LABEL_307;
          }

          *(a1 + 16) |= 4u;
          v56 = *(a1 + 48);
          if (v56)
          {
            goto LABEL_208;
          }

          v57 = *(a1 + 8);
          if (v57)
          {
            v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
          }

          v56 = sub_2763D3E1C(v57);
          *(a1 + 48) = v56;
          goto LABEL_207;
        case 6u:
          if (v7 != 48)
          {
            goto LABEL_307;
          }

          *(a1 + 16) |= 0x40000000u;
          v95 = (v6 + 1);
          v94 = *v6;
          if ((v94 & 0x8000000000000000) == 0)
          {
            goto LABEL_174;
          }

          v96 = *v95;
          v94 = (v96 << 7) + v94 - 128;
          if (v96 < 0)
          {
            v189 = google::protobuf::internal::VarintParseSlow64(v6, v94);
            v209 = v189;
            *(a1 + 258) = v190 != 0;
            if (!v189)
            {
              return 0;
            }
          }

          else
          {
            v95 = (v6 + 2);
LABEL_174:
            v209 = v95;
            *(a1 + 258) = v94 != 0;
          }

          goto LABEL_300;
        case 7u:
          if (v7 != 58)
          {
            goto LABEL_307;
          }

          *(a1 + 16) |= 8u;
          v56 = *(a1 + 56);
          if (v56)
          {
            goto LABEL_208;
          }

          v103 = *(a1 + 8);
          if (v103)
          {
            v103 = *(v103 & 0xFFFFFFFFFFFFFFFELL);
          }

          v56 = sub_2763D3E1C(v103);
          *(a1 + 56) = v56;
          goto LABEL_207;
        case 8u:
          if (v7 != 64)
          {
            goto LABEL_307;
          }

          *(a1 + 16) |= 0x80000000;
          v78 = (v6 + 1);
          v77 = *v6;
          if ((v77 & 0x8000000000000000) == 0)
          {
            goto LABEL_144;
          }

          v79 = *v78;
          v77 = (v79 << 7) + v77 - 128;
          if (v79 < 0)
          {
            v179 = google::protobuf::internal::VarintParseSlow64(v6, v77);
            v209 = v179;
            *(a1 + 259) = v180 != 0;
            if (!v179)
            {
              return 0;
            }
          }

          else
          {
            v78 = (v6 + 2);
LABEL_144:
            v209 = v78;
            *(a1 + 259) = v77 != 0;
          }

          goto LABEL_300;
        case 9u:
          if (v7 != 74)
          {
            goto LABEL_307;
          }

          *(a1 + 16) |= 0x10u;
          v56 = *(a1 + 64);
          if (v56)
          {
            goto LABEL_208;
          }

          v108 = *(a1 + 8);
          if (v108)
          {
            v108 = *(v108 & 0xFFFFFFFFFFFFFFFELL);
          }

          v56 = sub_2763D3E1C(v108);
          *(a1 + 64) = v56;
          goto LABEL_207;
        case 0xAu:
          if (v7 != 80)
          {
            goto LABEL_307;
          }

          *(a1 + 20) |= 1u;
          v62 = (v6 + 1);
          v61 = *v6;
          if ((v61 & 0x8000000000000000) == 0)
          {
            goto LABEL_114;
          }

          v63 = *v62;
          v61 = (v63 << 7) + v61 - 128;
          if (v63 < 0)
          {
            v171 = google::protobuf::internal::VarintParseSlow64(v6, v61);
            v209 = v171;
            *(a1 + 260) = v172 != 0;
            if (!v171)
            {
              return 0;
            }
          }

          else
          {
            v62 = (v6 + 2);
LABEL_114:
            v209 = v62;
            *(a1 + 260) = v61 != 0;
          }

          goto LABEL_300;
        case 0xBu:
          if (v7 != 90)
          {
            goto LABEL_307;
          }

          *(a1 + 16) |= 0x20u;
          v56 = *(a1 + 72);
          if (v56)
          {
            goto LABEL_208;
          }

          v107 = *(a1 + 8);
          if (v107)
          {
            v107 = *(v107 & 0xFFFFFFFFFFFFFFFELL);
          }

          v56 = sub_2763D3E1C(v107);
          *(a1 + 72) = v56;
          goto LABEL_207;
        case 0xCu:
          if (v7 != 96)
          {
            goto LABEL_307;
          }

          *(a1 + 20) |= 2u;
          v51 = (v6 + 1);
          v50 = *v6;
          if ((v50 & 0x8000000000000000) == 0)
          {
            goto LABEL_89;
          }

          v52 = *v51;
          v50 = (v52 << 7) + v50 - 128;
          if (v52 < 0)
          {
            v167 = google::protobuf::internal::VarintParseSlow64(v6, v50);
            v209 = v167;
            *(a1 + 261) = v168 != 0;
            if (!v167)
            {
              return 0;
            }
          }

          else
          {
            v51 = (v6 + 2);
LABEL_89:
            v209 = v51;
            *(a1 + 261) = v50 != 0;
          }

          goto LABEL_300;
        case 0xDu:
          if (v7 != 106)
          {
            goto LABEL_307;
          }

          *(a1 + 16) |= 0x40u;
          v56 = *(a1 + 80);
          if (v56)
          {
            goto LABEL_208;
          }

          v60 = *(a1 + 8);
          if (v60)
          {
            v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
          }

          v56 = sub_2763D3E1C(v60);
          *(a1 + 80) = v56;
LABEL_207:
          v6 = v209;
LABEL_208:
          v106 = sub_2764A9E4C(a3, v56, v6);
          goto LABEL_299;
        case 0xEu:
          if (v7 != 112)
          {
            goto LABEL_307;
          }

          *(a1 + 20) |= 4u;
          v101 = (v6 + 1);
          v100 = *v6;
          if ((v100 & 0x8000000000000000) == 0)
          {
            goto LABEL_184;
          }

          v102 = *v101;
          v100 = (v102 << 7) + v100 - 128;
          if (v102 < 0)
          {
            v193 = google::protobuf::internal::VarintParseSlow64(v6, v100);
            v209 = v193;
            *(a1 + 262) = v194 != 0;
            if (!v193)
            {
              return 0;
            }
          }

          else
          {
            v101 = (v6 + 2);
LABEL_184:
            v209 = v101;
            *(a1 + 262) = v100 != 0;
          }

          goto LABEL_300;
        case 0xFu:
          if (v7 != 122)
          {
            goto LABEL_307;
          }

          *(a1 + 16) |= 0x80u;
          v40 = *(a1 + 88);
          if (v40)
          {
            goto LABEL_273;
          }

          v43 = *(a1 + 8);
          if (v43)
          {
            v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
          }

          v44 = MEMORY[0x277C97C20](v43);
          LODWORD(v40) = v44;
          *(a1 + 88) = v44;
          goto LABEL_272;
        case 0x10u:
          if (v7 != 128)
          {
            goto LABEL_307;
          }

          *(a1 + 20) |= 8u;
          v72 = (v6 + 1);
          v71 = *v6;
          if ((v71 & 0x8000000000000000) == 0)
          {
            goto LABEL_134;
          }

          v73 = *v72;
          v71 = (v73 << 7) + v71 - 128;
          if (v73 < 0)
          {
            v175 = google::protobuf::internal::VarintParseSlow64(v6, v71);
            v209 = v175;
            *(a1 + 263) = v176 != 0;
            if (!v175)
            {
              return 0;
            }
          }

          else
          {
            v72 = (v6 + 2);
LABEL_134:
            v209 = v72;
            *(a1 + 263) = v71 != 0;
          }

          goto LABEL_300;
        case 0x11u:
          if (v7 != 138)
          {
            goto LABEL_307;
          }

          *(a1 + 16) |= 0x100u;
          v37 = *(a1 + 96);
          if (v37)
          {
            goto LABEL_215;
          }

          v38 = *(a1 + 8);
          if (v38)
          {
            v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
          }

          v39 = MEMORY[0x277C97BE0](v38);
          LODWORD(v37) = v39;
          *(a1 + 96) = v39;
          goto LABEL_214;
        case 0x12u:
          if (v7 != 144)
          {
            goto LABEL_307;
          }

          *(a1 + 20) |= 0x10u;
          v87 = (v6 + 1);
          v86 = *v6;
          if ((v86 & 0x8000000000000000) == 0)
          {
            goto LABEL_159;
          }

          v88 = *v87;
          v86 = (v88 << 7) + v86 - 128;
          if (v88 < 0)
          {
            v185 = google::protobuf::internal::VarintParseSlow64(v6, v86);
            v209 = v185;
            *(a1 + 264) = v186 != 0;
            if (!v185)
            {
              return 0;
            }
          }

          else
          {
            v87 = (v6 + 2);
LABEL_159:
            v209 = v87;
            *(a1 + 264) = v86 != 0;
          }

          goto LABEL_300;
        case 0x13u:
          if (v7 != 154)
          {
            goto LABEL_307;
          }

          *(a1 + 16) |= 0x200u;
          v67 = *(a1 + 104);
          if (v67)
          {
            goto LABEL_196;
          }

          v104 = *(a1 + 8);
          if (v104)
          {
            v104 = *(v104 & 0xFFFFFFFFFFFFFFFELL);
          }

          v105 = MEMORY[0x277C97C00](v104);
          LODWORD(v67) = v105;
          *(a1 + 104) = v105;
          goto LABEL_195;
        case 0x14u:
          if (v7 != 160)
          {
            goto LABEL_307;
          }

          *(a1 + 20) |= 0x20u;
          v123 = (v6 + 1);
          v122 = *v6;
          if ((v122 & 0x8000000000000000) == 0)
          {
            goto LABEL_241;
          }

          v124 = *v123;
          v122 = (v124 << 7) + v122 - 128;
          if (v124 < 0)
          {
            v199 = google::protobuf::internal::VarintParseSlow64(v6, v122);
            v209 = v199;
            *(a1 + 265) = v200 != 0;
            if (!v199)
            {
              return 0;
            }
          }

          else
          {
            v123 = (v6 + 2);
LABEL_241:
            v209 = v123;
            *(a1 + 265) = v122 != 0;
          }

          goto LABEL_300;
        case 0x15u:
          if (v7 != 170)
          {
            goto LABEL_307;
          }

          *(a1 + 16) |= 0x400u;
          v8 = *(a1 + 112);
          if (v8)
          {
            goto LABEL_298;
          }

          v92 = *(a1 + 8);
          if (v92)
          {
            v92 = *(v92 & 0xFFFFFFFFFFFFFFFELL);
          }

          v93 = MEMORY[0x277C97C40](v92);
          LODWORD(v8) = v93;
          *(a1 + 112) = v93;
          goto LABEL_297;
        case 0x16u:
          if (v7 != 176)
          {
            goto LABEL_307;
          }

          *(a1 + 20) |= 0x40u;
          v98 = (v6 + 1);
          v97 = *v6;
          if ((v97 & 0x8000000000000000) == 0)
          {
            goto LABEL_179;
          }

          v99 = *v98;
          v97 = (v99 << 7) + v97 - 128;
          if (v99 < 0)
          {
            v191 = google::protobuf::internal::VarintParseSlow64(v6, v97);
            v209 = v191;
            *(a1 + 266) = v192 != 0;
            if (!v191)
            {
              return 0;
            }
          }

          else
          {
            v98 = (v6 + 2);
LABEL_179:
            v209 = v98;
            *(a1 + 266) = v97 != 0;
          }

          goto LABEL_300;
        case 0x17u:
          if (v7 != 186)
          {
            goto LABEL_307;
          }

          *(a1 + 16) |= 0x800u;
          v116 = *(a1 + 120);
          if (!v116)
          {
            v117 = *(a1 + 8);
            if (v117)
            {
              v117 = *(v117 & 0xFFFFFFFFFFFFFFFELL);
            }

            v118 = MEMORY[0x277C97BF0](v117);
            LODWORD(v116) = v118;
            *(a1 + 120) = v118;
            v6 = v209;
          }

          v106 = sub_2764A9938(a3, v116, v6);
          goto LABEL_299;
        case 0x18u:
          if (v7 != 192)
          {
            goto LABEL_307;
          }

          *(a1 + 20) |= 0x80u;
          v128 = (v6 + 1);
          v127 = *v6;
          if ((v127 & 0x8000000000000000) == 0)
          {
            goto LABEL_251;
          }

          v129 = *v128;
          v127 = (v129 << 7) + v127 - 128;
          if (v129 < 0)
          {
            v201 = google::protobuf::internal::VarintParseSlow64(v6, v127);
            v209 = v201;
            *(a1 + 267) = v202 != 0;
            if (!v201)
            {
              return 0;
            }
          }

          else
          {
            v128 = (v6 + 2);
LABEL_251:
            v209 = v128;
            *(a1 + 267) = v127 != 0;
          }

          goto LABEL_300;
        case 0x19u:
          if (v7 != 202)
          {
            goto LABEL_307;
          }

          *(a1 + 16) |= 0x1000u;
          v67 = *(a1 + 128);
          if (v67)
          {
            goto LABEL_196;
          }

          v68 = *(a1 + 8);
          if (v68)
          {
            v68 = *(v68 & 0xFFFFFFFFFFFFFFFELL);
          }

          v69 = MEMORY[0x277C97C00](v68);
          LODWORD(v67) = v69;
          *(a1 + 128) = v69;
LABEL_195:
          v6 = v209;
LABEL_196:
          v106 = sub_2764A9868(a3, v67, v6);
          goto LABEL_299;
        case 0x1Au:
          if (v7 != 208)
          {
            goto LABEL_307;
          }

          *(a1 + 20) |= 0x100u;
          v65 = (v6 + 1);
          v64 = *v6;
          if ((v64 & 0x8000000000000000) == 0)
          {
            goto LABEL_119;
          }

          v66 = *v65;
          v64 = (v66 << 7) + v64 - 128;
          if (v66 < 0)
          {
            v173 = google::protobuf::internal::VarintParseSlow64(v6, v64);
            v209 = v173;
            *(a1 + 268) = v174 != 0;
            if (!v173)
            {
              return 0;
            }
          }

          else
          {
            v65 = (v6 + 2);
LABEL_119:
            v209 = v65;
            *(a1 + 268) = v64 != 0;
          }

          goto LABEL_300;
        case 0x1Bu:
          if (v7 != 218)
          {
            goto LABEL_307;
          }

          *(a1 + 16) |= 0x2000u;
          v40 = *(a1 + 136);
          if (v40)
          {
            goto LABEL_273;
          }

          v137 = *(a1 + 8);
          if (v137)
          {
            v137 = *(v137 & 0xFFFFFFFFFFFFFFFELL);
          }

          v138 = MEMORY[0x277C97C20](v137);
          LODWORD(v40) = v138;
          *(a1 + 136) = v138;
          goto LABEL_272;
        case 0x1Cu:
          if (v7 != 224)
          {
            goto LABEL_307;
          }

          *(a1 + 20) |= 0x200u;
          v33 = (v6 + 1);
          v32 = *v6;
          if ((v32 & 0x8000000000000000) == 0)
          {
            goto LABEL_54;
          }

          v34 = *v33;
          v32 = (v34 << 7) + v32 - 128;
          if (v34 < 0)
          {
            v163 = google::protobuf::internal::VarintParseSlow64(v6, v32);
            v209 = v163;
            *(a1 + 269) = v164 != 0;
            if (!v163)
            {
              return 0;
            }
          }

          else
          {
            v33 = (v6 + 2);
LABEL_54:
            v209 = v33;
            *(a1 + 269) = v32 != 0;
          }

          goto LABEL_300;
        case 0x1Du:
          if (v7 != 234)
          {
            goto LABEL_307;
          }

          *(a1 + 16) |= 0x4000u;
          v12 = *(a1 + 144);
          if (v12)
          {
            goto LABEL_280;
          }

          v130 = *(a1 + 8);
          if (v130)
          {
            v130 = *(v130 & 0xFFFFFFFFFFFFFFFELL);
          }

          v131 = MEMORY[0x277C97C60](v130);
          LODWORD(v12) = v131;
          *(a1 + 144) = v131;
          goto LABEL_279;
        case 0x1Eu:
          if (v7 != 240)
          {
            goto LABEL_307;
          }

          *(a1 + 20) |= 0x400u;
          v133 = (v6 + 1);
          v132 = *v6;
          if ((v132 & 0x8000000000000000) == 0)
          {
            goto LABEL_261;
          }

          v134 = *v133;
          v132 = (v134 << 7) + v132 - 128;
          if (v134 < 0)
          {
            v203 = google::protobuf::internal::VarintParseSlow64(v6, v132);
            v209 = v203;
            *(a1 + 270) = v204 != 0;
            if (!v203)
            {
              return 0;
            }
          }

          else
          {
            v133 = (v6 + 2);
LABEL_261:
            v209 = v133;
            *(a1 + 270) = v132 != 0;
          }

          goto LABEL_300;
        case 0x1Fu:
          if (v7 != 250)
          {
            goto LABEL_307;
          }

          *(a1 + 16) |= 0x8000u;
          v37 = *(a1 + 152);
          if (v37)
          {
            goto LABEL_215;
          }

          v109 = *(a1 + 8);
          if (v109)
          {
            v109 = *(v109 & 0xFFFFFFFFFFFFFFFELL);
          }

          v110 = MEMORY[0x277C97BE0](v109);
          LODWORD(v37) = v110;
          *(a1 + 152) = v110;
LABEL_214:
          v6 = v209;
LABEL_215:
          v106 = sub_2764A9B0C(a3, v37, v6);
          goto LABEL_299;
        case 0x20u:
          if (v7)
          {
            goto LABEL_307;
          }

          *(a1 + 20) |= 0x800u;
          v84 = (v6 + 1);
          v83 = *v6;
          if ((v83 & 0x8000000000000000) == 0)
          {
            goto LABEL_154;
          }

          v85 = *v84;
          v83 = (v85 << 7) + v83 - 128;
          if (v85 < 0)
          {
            v183 = google::protobuf::internal::VarintParseSlow64(v6, v83);
            v209 = v183;
            *(a1 + 271) = v184 != 0;
            if (!v183)
            {
              return 0;
            }
          }

          else
          {
            v84 = (v6 + 2);
LABEL_154:
            v209 = v84;
            *(a1 + 271) = v83 != 0;
          }

          goto LABEL_300;
        case 0x21u:
          if (v7 != 10)
          {
            goto LABEL_307;
          }

          *(a1 + 16) |= 0x10000u;
          v8 = *(a1 + 160);
          if (v8)
          {
            goto LABEL_298;
          }

          v111 = *(a1 + 8);
          if (v111)
          {
            v111 = *(v111 & 0xFFFFFFFFFFFFFFFELL);
          }

          v112 = MEMORY[0x277C97C40](v111);
          LODWORD(v8) = v112;
          *(a1 + 160) = v112;
          goto LABEL_297;
        case 0x22u:
          if (v7 != 16)
          {
            goto LABEL_307;
          }

          *(a1 + 20) |= 0x1000u;
          v46 = (v6 + 1);
          v45 = *v6;
          if ((v45 & 0x8000000000000000) == 0)
          {
            goto LABEL_79;
          }

          v47 = *v46;
          v45 = (v47 << 7) + v45 - 128;
          if (v47 < 0)
          {
            v165 = google::protobuf::internal::VarintParseSlow64(v6, v45);
            v209 = v165;
            *(a1 + 272) = v166 != 0;
            if (!v165)
            {
              return 0;
            }
          }

          else
          {
            v46 = (v6 + 2);
LABEL_79:
            v209 = v46;
            *(a1 + 272) = v45 != 0;
          }

          goto LABEL_300;
        case 0x23u:
          if (v7 != 26)
          {
            goto LABEL_307;
          }

          *(a1 + 16) |= 0x20000u;
          v8 = *(a1 + 168);
          if (v8)
          {
            goto LABEL_298;
          }

          v35 = *(a1 + 8);
          if (v35)
          {
            v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
          }

          v36 = MEMORY[0x277C97C40](v35);
          LODWORD(v8) = v36;
          *(a1 + 168) = v36;
          goto LABEL_297;
        case 0x24u:
          if (v7 != 32)
          {
            goto LABEL_307;
          }

          *(a1 + 20) |= 0x2000u;
          v28 = (v6 + 1);
          v27 = *v6;
          if ((v27 & 0x8000000000000000) == 0)
          {
            goto LABEL_44;
          }

          v29 = *v28;
          v27 = (v29 << 7) + v27 - 128;
          if (v29 < 0)
          {
            v161 = google::protobuf::internal::VarintParseSlow64(v6, v27);
            v209 = v161;
            *(a1 + 273) = v162 != 0;
            if (!v161)
            {
              return 0;
            }
          }

          else
          {
            v28 = (v6 + 2);
LABEL_44:
            v209 = v28;
            *(a1 + 273) = v27 != 0;
          }

          goto LABEL_300;
        case 0x25u:
          if (v7 != 42)
          {
            goto LABEL_307;
          }

          *(a1 + 16) |= 0x40000u;
          v8 = *(a1 + 176);
          if (v8)
          {
            goto LABEL_298;
          }

          v30 = *(a1 + 8);
          if (v30)
          {
            v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
          }

          v31 = MEMORY[0x277C97C40](v30);
          LODWORD(v8) = v31;
          *(a1 + 176) = v31;
          goto LABEL_297;
        case 0x26u:
          if (v7 != 48)
          {
            goto LABEL_307;
          }

          *(a1 + 20) |= 0x4000u;
          v19 = (v6 + 1);
          v18 = *v6;
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_29;
          }

          v20 = *v19;
          v18 = (v20 << 7) + v18 - 128;
          if (v20 < 0)
          {
            v155 = google::protobuf::internal::VarintParseSlow64(v6, v18);
            v209 = v155;
            *(a1 + 274) = v156 != 0;
            if (!v155)
            {
              return 0;
            }
          }

          else
          {
            v19 = (v6 + 2);
LABEL_29:
            v209 = v19;
            *(a1 + 274) = v18 != 0;
          }

          goto LABEL_300;
        case 0x27u:
          if (v7 != 58)
          {
            goto LABEL_307;
          }

          *(a1 + 16) |= 0x80000u;
          v40 = *(a1 + 184);
          if (v40)
          {
            goto LABEL_273;
          }

          v135 = *(a1 + 8);
          if (v135)
          {
            v135 = *(v135 & 0xFFFFFFFFFFFFFFFELL);
          }

          v136 = MEMORY[0x277C97C20](v135);
          LODWORD(v40) = v136;
          *(a1 + 184) = v136;
          goto LABEL_272;
        case 0x28u:
          if (v7 != 64)
          {
            goto LABEL_307;
          }

          *(a1 + 20) |= 0x8000u;
          v120 = (v6 + 1);
          v119 = *v6;
          if ((v119 & 0x8000000000000000) == 0)
          {
            goto LABEL_236;
          }

          v121 = *v120;
          v119 = (v121 << 7) + v119 - 128;
          if (v121 < 0)
          {
            v197 = google::protobuf::internal::VarintParseSlow64(v6, v119);
            v209 = v197;
            *(a1 + 275) = v198 != 0;
            if (!v197)
            {
              return 0;
            }
          }

          else
          {
            v120 = (v6 + 2);
LABEL_236:
            v209 = v120;
            *(a1 + 275) = v119 != 0;
          }

          goto LABEL_300;
        case 0x29u:
          if (v7 != 74)
          {
            goto LABEL_307;
          }

          *(a1 + 16) |= 0x100000u;
          v40 = *(a1 + 192);
          if (v40)
          {
            goto LABEL_273;
          }

          v58 = *(a1 + 8);
          if (v58)
          {
            v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
          }

          v59 = MEMORY[0x277C97C20](v58);
          LODWORD(v40) = v59;
          *(a1 + 192) = v59;
          goto LABEL_272;
        case 0x2Au:
          if (v7 != 80)
          {
            goto LABEL_307;
          }

          *(a1 + 20) |= 0x10000u;
          v90 = (v6 + 1);
          v89 = *v6;
          if ((v89 & 0x8000000000000000) == 0)
          {
            goto LABEL_164;
          }

          v91 = *v90;
          v89 = (v91 << 7) + v89 - 128;
          if (v91 < 0)
          {
            v187 = google::protobuf::internal::VarintParseSlow64(v6, v89);
            v209 = v187;
            *(a1 + 276) = v188 != 0;
            if (!v187)
            {
              return 0;
            }
          }

          else
          {
            v90 = (v6 + 2);
LABEL_164:
            v209 = v90;
            *(a1 + 276) = v89 != 0;
          }

          goto LABEL_300;
        case 0x2Bu:
          if (v7 != 90)
          {
            goto LABEL_307;
          }

          *(a1 + 16) |= 0x200000u;
          v8 = *(a1 + 200);
          if (v8)
          {
            goto LABEL_298;
          }

          v125 = *(a1 + 8);
          if (v125)
          {
            v125 = *(v125 & 0xFFFFFFFFFFFFFFFELL);
          }

          v126 = MEMORY[0x277C97C40](v125);
          LODWORD(v8) = v126;
          *(a1 + 200) = v126;
          goto LABEL_297;
        case 0x2Cu:
          if (v7 != 96)
          {
            goto LABEL_307;
          }

          *(a1 + 20) |= 0x20000u;
          v16 = (v6 + 1);
          v15 = *v6;
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_24;
          }

          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if (v17 < 0)
          {
            v153 = google::protobuf::internal::VarintParseSlow64(v6, v15);
            v209 = v153;
            *(a1 + 277) = v154 != 0;
            if (!v153)
            {
              return 0;
            }
          }

          else
          {
            v16 = (v6 + 2);
LABEL_24:
            v209 = v16;
            *(a1 + 277) = v15 != 0;
          }

          goto LABEL_300;
        case 0x2Du:
          if (v7 != 106)
          {
            goto LABEL_307;
          }

          *(a1 + 16) |= 0x400000u;
          v40 = *(a1 + 208);
          if (v40)
          {
            goto LABEL_273;
          }

          v41 = *(a1 + 8);
          if (v41)
          {
            v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
          }

          v42 = MEMORY[0x277C97C20](v41);
          LODWORD(v40) = v42;
          *(a1 + 208) = v42;
LABEL_272:
          v6 = v209;
LABEL_273:
          v106 = sub_2764A95F8(a3, v40, v6);
          goto LABEL_299;
        case 0x2Eu:
          if (v7 != 112)
          {
            goto LABEL_307;
          }

          *(a1 + 20) |= 0x40000u;
          v114 = (v6 + 1);
          v113 = *v6;
          if ((v113 & 0x8000000000000000) == 0)
          {
            goto LABEL_225;
          }

          v115 = *v114;
          v113 = (v115 << 7) + v113 - 128;
          if (v115 < 0)
          {
            v195 = google::protobuf::internal::VarintParseSlow64(v6, v113);
            v209 = v195;
            *(a1 + 278) = v196 != 0;
            if (!v195)
            {
              return 0;
            }
          }

          else
          {
            v114 = (v6 + 2);
LABEL_225:
            v209 = v114;
            *(a1 + 278) = v113 != 0;
          }

          goto LABEL_300;
        case 0x2Fu:
          if (v7 != 122)
          {
            goto LABEL_307;
          }

          *(a1 + 16) |= 0x800000u;
          v8 = *(a1 + 216);
          if (v8)
          {
            goto LABEL_298;
          }

          v147 = *(a1 + 8);
          if (v147)
          {
            v147 = *(v147 & 0xFFFFFFFFFFFFFFFELL);
          }

          v148 = MEMORY[0x277C97C40](v147);
          LODWORD(v8) = v148;
          *(a1 + 216) = v148;
LABEL_297:
          v6 = v209;
LABEL_298:
          v106 = sub_2764A9528(a3, v8, v6);
          goto LABEL_299;
        case 0x30u:
          if (v7 != 128)
          {
            goto LABEL_307;
          }

          *(a1 + 20) |= 0x80000u;
          v25 = (v6 + 1);
          v24 = *v6;
          if ((v24 & 0x8000000000000000) == 0)
          {
            goto LABEL_39;
          }

          v26 = *v25;
          v24 = (v26 << 7) + v24 - 128;
          if (v26 < 0)
          {
            v159 = google::protobuf::internal::VarintParseSlow64(v6, v24);
            v209 = v159;
            *(a1 + 279) = v160 != 0;
            if (!v159)
            {
              return 0;
            }
          }

          else
          {
            v25 = (v6 + 2);
LABEL_39:
            v209 = v25;
            *(a1 + 279) = v24 != 0;
          }

          goto LABEL_300;
        case 0x31u:
          if (v7 != 138)
          {
            goto LABEL_307;
          }

          *(a1 + 16) |= 0x1000000u;
          v12 = *(a1 + 224);
          if (v12)
          {
            goto LABEL_280;
          }

          v48 = *(a1 + 8);
          if (v48)
          {
            v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
          }

          v49 = MEMORY[0x277C97C60](v48);
          LODWORD(v12) = v49;
          *(a1 + 224) = v49;
          goto LABEL_279;
        case 0x32u:
          if (v7 != 144)
          {
            goto LABEL_307;
          }

          *(a1 + 20) |= 0x100000u;
          v54 = (v6 + 1);
          v53 = *v6;
          if ((v53 & 0x8000000000000000) == 0)
          {
            goto LABEL_94;
          }

          v55 = *v54;
          v53 = (v55 << 7) + v53 - 128;
          if (v55 < 0)
          {
            v169 = google::protobuf::internal::VarintParseSlow64(v6, v53);
            v209 = v169;
            *(a1 + 280) = v170 != 0;
            if (!v169)
            {
              return 0;
            }
          }

          else
          {
            v54 = (v6 + 2);
LABEL_94:
            v209 = v54;
            *(a1 + 280) = v53 != 0;
          }

          goto LABEL_300;
        case 0x33u:
          if (v7 != 154)
          {
            goto LABEL_307;
          }

          *(a1 + 16) |= 0x2000000u;
          v12 = *(a1 + 232);
          if (v12)
          {
            goto LABEL_280;
          }

          v13 = *(a1 + 8);
          if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = MEMORY[0x277C97C60](v13);
          LODWORD(v12) = v14;
          *(a1 + 232) = v14;
          goto LABEL_279;
        case 0x34u:
          if (v7 != 160)
          {
            goto LABEL_307;
          }

          *(a1 + 20) |= 0x200000u;
          v150 = (v6 + 1);
          v149 = *v6;
          if ((v149 & 0x8000000000000000) == 0)
          {
            goto LABEL_306;
          }

          v151 = *v150;
          v149 = (v151 << 7) + v149 - 128;
          if (v151 < 0)
          {
            v207 = google::protobuf::internal::VarintParseSlow64(v6, v149);
            v209 = v207;
            *(a1 + 281) = v208 != 0;
            if (!v207)
            {
              return 0;
            }
          }

          else
          {
            v150 = (v6 + 2);
LABEL_306:
            v209 = v150;
            *(a1 + 281) = v149 != 0;
          }

          goto LABEL_300;
        case 0x35u:
          if (v7 != 170)
          {
            goto LABEL_307;
          }

          *(a1 + 16) |= 0x4000000u;
          v144 = *(a1 + 240);
          if (!v144)
          {
            v145 = *(a1 + 8);
            if (v145)
            {
              v145 = *(v145 & 0xFFFFFFFFFFFFFFFELL);
            }

            v146 = MEMORY[0x277C97C30](v145);
            LODWORD(v144) = v146;
            *(a1 + 240) = v146;
            v6 = v209;
          }

          v106 = sub_2764A9F1C(a3, v144, v6);
          goto LABEL_299;
        case 0x36u:
          if (v7 != 176)
          {
            goto LABEL_307;
          }

          *(a1 + 20) |= 0x400000u;
          v22 = (v6 + 1);
          v21 = *v6;
          if ((v21 & 0x8000000000000000) == 0)
          {
            goto LABEL_34;
          }

          v23 = *v22;
          v21 = (v23 << 7) + v21 - 128;
          if (v23 < 0)
          {
            v157 = google::protobuf::internal::VarintParseSlow64(v6, v21);
            v209 = v157;
            *(a1 + 282) = v158 != 0;
            if (!v157)
            {
              return 0;
            }
          }

          else
          {
            v22 = (v6 + 2);
LABEL_34:
            v209 = v22;
            *(a1 + 282) = v21 != 0;
          }

          goto LABEL_300;
        case 0x37u:
          if (v7 != 186)
          {
            goto LABEL_307;
          }

          *(a1 + 16) |= 0x8000000u;
          v12 = *(a1 + 248);
          if (v12)
          {
            goto LABEL_280;
          }

          v139 = *(a1 + 8);
          if (v139)
          {
            v139 = *(v139 & 0xFFFFFFFFFFFFFFFELL);
          }

          v140 = MEMORY[0x277C97C60](v139);
          LODWORD(v12) = v140;
          *(a1 + 248) = v140;
LABEL_279:
          v6 = v209;
LABEL_280:
          v106 = sub_2764A9458(a3, v12, v6);
          goto LABEL_299;
        case 0x38u:
          if (v7 != 192)
          {
            goto LABEL_307;
          }

          *(a1 + 20) |= 0x800000u;
          v142 = (v6 + 1);
          v141 = *v6;
          if ((v141 & 0x8000000000000000) == 0)
          {
            goto LABEL_285;
          }

          v143 = *v142;
          v141 = (v143 << 7) + v141 - 128;
          if (v143 < 0)
          {
            v205 = google::protobuf::internal::VarintParseSlow64(v6, v141);
            v209 = v205;
            *(a1 + 283) = v206 != 0;
            if (!v205)
            {
              return 0;
            }
          }

          else
          {
            v142 = (v6 + 2);
LABEL_285:
            v209 = v142;
            *(a1 + 283) = v141 != 0;
          }

          goto LABEL_300;
        default:
LABEL_307:
          if (v7)
          {
            v152 = (v7 & 7) == 4;
          }

          else
          {
            v152 = 1;
          }

          if (v152)
          {
            *(a3 + 80) = v7 - 1;
            return v209;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2763D4E10((a1 + 8));
          }

          v106 = google::protobuf::internal::UnknownFieldParse();
LABEL_299:
          v209 = v106;
          if (!v106)
          {
            return 0;
          }

LABEL_300:
          if (sub_2763D4D98(a3, &v209))
          {
            return v209;
          }

          break;
      }
    }
  }

  return v209;
}

unsigned __int8 *sub_2763D0BF4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v6 = *(a1 + 32);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v6, v8, this);
    if ((v5 & 0x10000000) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v5 & 0x10000000) == 0)
  {
    goto LABEL_3;
  }

  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v12 = *(a1 + 256);
  *a2 = 16;
  a2[1] = v12;
  a2 += 2;
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_24:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v13 = *(a1 + 40);
  *a2 = 26;
  v14 = *(v13 + 20);
  if (v14 > 0x7F)
  {
    a2[1] = v14 | 0x80;
    v16 = v14 >> 7;
    if (v14 >> 14)
    {
      v15 = a2 + 3;
      do
      {
        *(v15 - 1) = v16 | 0x80;
        v17 = v16 >> 7;
        ++v15;
        v18 = v16 >> 14;
        v16 >>= 7;
      }

      while (v18);
      *(v15 - 1) = v17;
    }

    else
    {
      a2[2] = v16;
      v15 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v14;
    v15 = a2 + 2;
  }

  a2 = sub_276396C90(v13, v15, this);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_34:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v19 = *(a1 + 257);
  *a2 = 32;
  a2[1] = v19;
  a2 += 2;
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_37:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v20 = *(a1 + 48);
  *a2 = 42;
  v21 = *(v20 + 20);
  if (v21 > 0x7F)
  {
    a2[1] = v21 | 0x80;
    v23 = v21 >> 7;
    if (v21 >> 14)
    {
      v22 = a2 + 3;
      do
      {
        *(v22 - 1) = v23 | 0x80;
        v24 = v23 >> 7;
        ++v22;
        v25 = v23 >> 14;
        v23 >>= 7;
      }

      while (v25);
      *(v22 - 1) = v24;
    }

    else
    {
      a2[2] = v23;
      v22 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v21;
    v22 = a2 + 2;
  }

  a2 = sub_276396C90(v20, v22, this);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_50;
  }

LABEL_47:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v26 = *(a1 + 258);
  *a2 = 48;
  a2[1] = v26;
  a2 += 2;
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_60;
  }

LABEL_50:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v27 = *(a1 + 56);
  *a2 = 58;
  v28 = *(v27 + 20);
  if (v28 > 0x7F)
  {
    a2[1] = v28 | 0x80;
    v30 = v28 >> 7;
    if (v28 >> 14)
    {
      v29 = a2 + 3;
      do
      {
        *(v29 - 1) = v30 | 0x80;
        v31 = v30 >> 7;
        ++v29;
        v32 = v30 >> 14;
        v30 >>= 7;
      }

      while (v32);
      *(v29 - 1) = v31;
    }

    else
    {
      a2[2] = v30;
      v29 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v28;
    v29 = a2 + 2;
  }

  a2 = sub_276396C90(v27, v29, this);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_63;
  }

LABEL_60:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v33 = *(a1 + 259);
  *a2 = 64;
  a2[1] = v33;
  a2 += 2;
  if ((v5 & 0x10) != 0)
  {
LABEL_63:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v34 = *(a1 + 64);
    *a2 = 74;
    v35 = *(v34 + 20);
    if (v35 > 0x7F)
    {
      a2[1] = v35 | 0x80;
      v37 = v35 >> 7;
      if (v35 >> 14)
      {
        v36 = a2 + 3;
        do
        {
          *(v36 - 1) = v37 | 0x80;
          v38 = v37 >> 7;
          ++v36;
          v39 = v37 >> 14;
          v37 >>= 7;
        }

        while (v39);
        *(v36 - 1) = v38;
      }

      else
      {
        a2[2] = v37;
        v36 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v35;
      v36 = a2 + 2;
    }

    a2 = sub_276396C90(v34, v36, this);
  }

LABEL_73:
  if (*(a1 + 20))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v40 = *(a1 + 260);
    *a2 = 80;
    a2[1] = v40;
    a2 += 2;
  }

  if ((*(a1 + 16) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v41 = *(a1 + 72);
    *a2 = 90;
    v42 = *(v41 + 20);
    if (v42 > 0x7F)
    {
      a2[1] = v42 | 0x80;
      v44 = v42 >> 7;
      if (v42 >> 14)
      {
        v43 = a2 + 3;
        do
        {
          *(v43 - 1) = v44 | 0x80;
          v45 = v44 >> 7;
          ++v43;
          v46 = v44 >> 14;
          v44 >>= 7;
        }

        while (v46);
        *(v43 - 1) = v45;
      }

      else
      {
        a2[2] = v44;
        v43 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v42;
      v43 = a2 + 2;
    }

    a2 = sub_276396C90(v41, v43, this);
  }

  if ((*(a1 + 20) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v47 = *(a1 + 261);
    *a2 = 96;
    a2[1] = v47;
    a2 += 2;
  }

  if ((*(a1 + 16) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v48 = *(a1 + 80);
    *a2 = 106;
    v49 = *(v48 + 20);
    if (v49 > 0x7F)
    {
      a2[1] = v49 | 0x80;
      v51 = v49 >> 7;
      if (v49 >> 14)
      {
        v50 = a2 + 3;
        do
        {
          *(v50 - 1) = v51 | 0x80;
          v52 = v51 >> 7;
          ++v50;
          v53 = v51 >> 14;
          v51 >>= 7;
        }

        while (v53);
        *(v50 - 1) = v52;
      }

      else
      {
        a2[2] = v51;
        v50 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v49;
      v50 = a2 + 2;
    }

    a2 = sub_276396C90(v48, v50, this);
  }

  if ((*(a1 + 20) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v54 = *(a1 + 262);
    *a2 = 112;
    a2[1] = v54;
    a2 += 2;
  }

  if ((*(a1 + 16) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v55 = *(a1 + 88);
    *a2 = 122;
    v56 = *(v55 + 5);
    if (v56 > 0x7F)
    {
      a2[1] = v56 | 0x80;
      v58 = v56 >> 7;
      if (v56 >> 14)
      {
        v57 = a2 + 3;
        do
        {
          *(v57 - 1) = v58 | 0x80;
          v59 = v58 >> 7;
          ++v57;
          v60 = v58 >> 14;
          v58 >>= 7;
        }

        while (v60);
        *(v57 - 1) = v59;
      }

      else
      {
        a2[2] = v58;
        v57 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v56;
      v57 = a2 + 2;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v55, v57, this);
  }

  if ((*(a1 + 20) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v61 = *(a1 + 263);
    *a2 = 384;
    a2[2] = v61;
    a2 += 3;
  }

  if (*(a1 + 17))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v62 = *(a1 + 96);
    *a2 = 394;
    v63 = *(v62 + 5);
    if (v63 > 0x7F)
    {
      a2[2] = v63 | 0x80;
      v65 = v63 >> 7;
      if (v63 >> 14)
      {
        v64 = a2 + 4;
        do
        {
          *(v64 - 1) = v65 | 0x80;
          v66 = v65 >> 7;
          ++v64;
          v67 = v65 >> 14;
          v65 >>= 7;
        }

        while (v67);
        *(v64 - 1) = v66;
      }

      else
      {
        a2[3] = v65;
        v64 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v63;
      v64 = a2 + 3;
    }

    a2 = TSDSOS::SpecFillArchive::_InternalSerialize(v62, v64, this);
  }

  if ((*(a1 + 20) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v68 = *(a1 + 264);
    *a2 = 400;
    a2[2] = v68;
    a2 += 3;
  }

  if ((*(a1 + 17) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v69 = *(a1 + 104);
    *a2 = 410;
    v70 = *(v69 + 5);
    if (v70 > 0x7F)
    {
      a2[2] = v70 | 0x80;
      v72 = v70 >> 7;
      if (v70 >> 14)
      {
        v71 = a2 + 4;
        do
        {
          *(v71 - 1) = v72 | 0x80;
          v73 = v72 >> 7;
          ++v71;
          v74 = v72 >> 14;
          v72 >>= 7;
        }

        while (v74);
        *(v71 - 1) = v73;
      }

      else
      {
        a2[3] = v72;
        v71 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v70;
      v71 = a2 + 3;
    }

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v69, v71, this);
  }

  if ((*(a1 + 20) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v75 = *(a1 + 265);
    *a2 = 416;
    a2[2] = v75;
    a2 += 3;
  }

  if ((*(a1 + 17) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v76 = *(a1 + 112);
    *a2 = 426;
    v77 = *(v76 + 5);
    if (v77 > 0x7F)
    {
      a2[2] = v77 | 0x80;
      v79 = v77 >> 7;
      if (v77 >> 14)
      {
        v78 = a2 + 4;
        do
        {
          *(v78 - 1) = v79 | 0x80;
          v80 = v79 >> 7;
          ++v78;
          v81 = v79 >> 14;
          v79 >>= 7;
        }

        while (v81);
        *(v78 - 1) = v80;
      }

      else
      {
        a2[3] = v79;
        v78 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v77;
      v78 = a2 + 3;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v76, v78, this);
  }

  if ((*(a1 + 20) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v82 = *(a1 + 266);
    *a2 = 432;
    a2[2] = v82;
    a2 += 3;
  }

  if ((*(a1 + 17) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v83 = *(a1 + 120);
    *a2 = 442;
    v84 = *(v83 + 5);
    if (v84 > 0x7F)
    {
      a2[2] = v84 | 0x80;
      v86 = v84 >> 7;
      if (v84 >> 14)
      {
        v85 = a2 + 4;
        do
        {
          *(v85 - 1) = v86 | 0x80;
          v87 = v86 >> 7;
          ++v85;
          v88 = v86 >> 14;
          v86 >>= 7;
        }

        while (v88);
        *(v85 - 1) = v87;
      }

      else
      {
        a2[3] = v86;
        v85 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v84;
      v85 = a2 + 3;
    }

    a2 = TSDSOS::SpecShadowArchive::_InternalSerialize(v83, v85, this);
  }

  if ((*(a1 + 20) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v89 = *(a1 + 267);
    *a2 = 448;
    a2[2] = v89;
    a2 += 3;
  }

  if ((*(a1 + 17) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v90 = *(a1 + 128);
    *a2 = 458;
    v91 = *(v90 + 5);
    if (v91 > 0x7F)
    {
      a2[2] = v91 | 0x80;
      v93 = v91 >> 7;
      if (v91 >> 14)
      {
        v92 = a2 + 4;
        do
        {
          *(v92 - 1) = v93 | 0x80;
          v94 = v93 >> 7;
          ++v92;
          v95 = v93 >> 14;
          v93 >>= 7;
        }

        while (v95);
        *(v92 - 1) = v94;
      }

      else
      {
        a2[3] = v93;
        v92 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v91;
      v92 = a2 + 3;
    }

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v90, v92, this);
  }

  if (*(a1 + 21))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v96 = *(a1 + 268);
    *a2 = 464;
    a2[2] = v96;
    a2 += 3;
  }

  if ((*(a1 + 17) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v97 = *(a1 + 136);
    *a2 = 474;
    v98 = *(v97 + 5);
    if (v98 > 0x7F)
    {
      a2[2] = v98 | 0x80;
      v100 = v98 >> 7;
      if (v98 >> 14)
      {
        v99 = a2 + 4;
        do
        {
          *(v99 - 1) = v100 | 0x80;
          v101 = v100 >> 7;
          ++v99;
          v102 = v100 >> 14;
          v100 >>= 7;
        }

        while (v102);
        *(v99 - 1) = v101;
      }

      else
      {
        a2[3] = v100;
        v99 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v98;
      v99 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v97, v99, this);
  }

  if ((*(a1 + 21) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v103 = *(a1 + 269);
    *a2 = 480;
    a2[2] = v103;
    a2 += 3;
  }

  if ((*(a1 + 17) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v104 = *(a1 + 144);
    *a2 = 490;
    v105 = *(v104 + 5);
    if (v105 > 0x7F)
    {
      a2[2] = v105 | 0x80;
      v107 = v105 >> 7;
      if (v105 >> 14)
      {
        v106 = a2 + 4;
        do
        {
          *(v106 - 1) = v107 | 0x80;
          v108 = v107 >> 7;
          ++v106;
          v109 = v107 >> 14;
          v107 >>= 7;
        }

        while (v109);
        *(v106 - 1) = v108;
      }

      else
      {
        a2[3] = v107;
        v106 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v105;
      v106 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v104, v106, this);
  }

  if ((*(a1 + 21) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v110 = *(a1 + 270);
    *a2 = 496;
    a2[2] = v110;
    a2 += 3;
  }

  if ((*(a1 + 17) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v111 = *(a1 + 152);
    *a2 = 506;
    v112 = *(v111 + 5);
    if (v112 > 0x7F)
    {
      a2[2] = v112 | 0x80;
      v114 = v112 >> 7;
      if (v112 >> 14)
      {
        v113 = a2 + 4;
        do
        {
          *(v113 - 1) = v114 | 0x80;
          v115 = v114 >> 7;
          ++v113;
          v116 = v114 >> 14;
          v114 >>= 7;
        }

        while (v116);
        *(v113 - 1) = v115;
      }

      else
      {
        a2[3] = v114;
        v113 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v112;
      v113 = a2 + 3;
    }

    a2 = TSDSOS::SpecFillArchive::_InternalSerialize(v111, v113, this);
  }

  if ((*(a1 + 21) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v117 = *(a1 + 271);
    *a2 = 640;
    a2[2] = v117;
    a2 += 3;
  }

  if (*(a1 + 18))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v118 = *(a1 + 160);
    *a2 = 650;
    v119 = *(v118 + 5);
    if (v119 > 0x7F)
    {
      a2[2] = v119 | 0x80;
      v121 = v119 >> 7;
      if (v119 >> 14)
      {
        v120 = a2 + 4;
        do
        {
          *(v120 - 1) = v121 | 0x80;
          v122 = v121 >> 7;
          ++v120;
          v123 = v121 >> 14;
          v121 >>= 7;
        }

        while (v123);
        *(v120 - 1) = v122;
      }

      else
      {
        a2[3] = v121;
        v120 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v119;
      v120 = a2 + 3;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v118, v120, this);
  }

  if ((*(a1 + 21) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v124 = *(a1 + 272);
    *a2 = 656;
    a2[2] = v124;
    a2 += 3;
  }

  if ((*(a1 + 18) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v125 = *(a1 + 168);
    *a2 = 666;
    v126 = *(v125 + 5);
    if (v126 > 0x7F)
    {
      a2[2] = v126 | 0x80;
      v128 = v126 >> 7;
      if (v126 >> 14)
      {
        v127 = a2 + 4;
        do
        {
          *(v127 - 1) = v128 | 0x80;
          v129 = v128 >> 7;
          ++v127;
          v130 = v128 >> 14;
          v128 >>= 7;
        }

        while (v130);
        *(v127 - 1) = v129;
      }

      else
      {
        a2[3] = v128;
        v127 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v126;
      v127 = a2 + 3;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v125, v127, this);
  }

  if ((*(a1 + 21) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v131 = *(a1 + 273);
    *a2 = 672;
    a2[2] = v131;
    a2 += 3;
  }

  if ((*(a1 + 18) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v132 = *(a1 + 176);
    *a2 = 682;
    v133 = *(v132 + 5);
    if (v133 > 0x7F)
    {
      a2[2] = v133 | 0x80;
      v135 = v133 >> 7;
      if (v133 >> 14)
      {
        v134 = a2 + 4;
        do
        {
          *(v134 - 1) = v135 | 0x80;
          v136 = v135 >> 7;
          ++v134;
          v137 = v135 >> 14;
          v135 >>= 7;
        }

        while (v137);
        *(v134 - 1) = v136;
      }

      else
      {
        a2[3] = v135;
        v134 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v133;
      v134 = a2 + 3;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v132, v134, this);
  }

  if ((*(a1 + 21) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v138 = *(a1 + 274);
    *a2 = 688;
    a2[2] = v138;
    a2 += 3;
  }

  if ((*(a1 + 18) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v139 = *(a1 + 184);
    *a2 = 698;
    v140 = *(v139 + 5);
    if (v140 > 0x7F)
    {
      a2[2] = v140 | 0x80;
      v142 = v140 >> 7;
      if (v140 >> 14)
      {
        v141 = a2 + 4;
        do
        {
          *(v141 - 1) = v142 | 0x80;
          v143 = v142 >> 7;
          ++v141;
          v144 = v142 >> 14;
          v142 >>= 7;
        }

        while (v144);
        *(v141 - 1) = v143;
      }

      else
      {
        a2[3] = v142;
        v141 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v140;
      v141 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v139, v141, this);
  }

  if ((*(a1 + 21) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v145 = *(a1 + 275);
    *a2 = 704;
    a2[2] = v145;
    a2 += 3;
  }

  if ((*(a1 + 18) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v146 = *(a1 + 192);
    *a2 = 714;
    v147 = *(v146 + 5);
    if (v147 > 0x7F)
    {
      a2[2] = v147 | 0x80;
      v149 = v147 >> 7;
      if (v147 >> 14)
      {
        v148 = a2 + 4;
        do
        {
          *(v148 - 1) = v149 | 0x80;
          v150 = v149 >> 7;
          ++v148;
          v151 = v149 >> 14;
          v149 >>= 7;
        }

        while (v151);
        *(v148 - 1) = v150;
      }

      else
      {
        a2[3] = v149;
        v148 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v147;
      v148 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v146, v148, this);
  }

  if (*(a1 + 22))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v152 = *(a1 + 276);
    *a2 = 720;
    a2[2] = v152;
    a2 += 3;
  }

  if ((*(a1 + 18) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v153 = *(a1 + 200);
    *a2 = 730;
    v154 = *(v153 + 5);
    if (v154 > 0x7F)
    {
      a2[2] = v154 | 0x80;
      v156 = v154 >> 7;
      if (v154 >> 14)
      {
        v155 = a2 + 4;
        do
        {
          *(v155 - 1) = v156 | 0x80;
          v157 = v156 >> 7;
          ++v155;
          v158 = v156 >> 14;
          v156 >>= 7;
        }

        while (v158);
        *(v155 - 1) = v157;
      }

      else
      {
        a2[3] = v156;
        v155 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v154;
      v155 = a2 + 3;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v153, v155, this);
  }

  if ((*(a1 + 22) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v159 = *(a1 + 277);
    *a2 = 736;
    a2[2] = v159;
    a2 += 3;
  }

  if ((*(a1 + 18) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v160 = *(a1 + 208);
    *a2 = 746;
    v161 = *(v160 + 5);
    if (v161 > 0x7F)
    {
      a2[2] = v161 | 0x80;
      v163 = v161 >> 7;
      if (v161 >> 14)
      {
        v162 = a2 + 4;
        do
        {
          *(v162 - 1) = v163 | 0x80;
          v164 = v163 >> 7;
          ++v162;
          v165 = v163 >> 14;
          v163 >>= 7;
        }

        while (v165);
        *(v162 - 1) = v164;
      }

      else
      {
        a2[3] = v163;
        v162 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v161;
      v162 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v160, v162, this);
  }

  if ((*(a1 + 22) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v166 = *(a1 + 278);
    *a2 = 752;
    a2[2] = v166;
    a2 += 3;
  }

  if ((*(a1 + 18) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v167 = *(a1 + 216);
    *a2 = 762;
    v168 = *(v167 + 5);
    if (v168 > 0x7F)
    {
      a2[2] = v168 | 0x80;
      v170 = v168 >> 7;
      if (v168 >> 14)
      {
        v169 = a2 + 4;
        do
        {
          *(v169 - 1) = v170 | 0x80;
          v171 = v170 >> 7;
          ++v169;
          v172 = v170 >> 14;
          v170 >>= 7;
        }

        while (v172);
        *(v169 - 1) = v171;
      }

      else
      {
        a2[3] = v170;
        v169 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v168;
      v169 = a2 + 3;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v167, v169, this);
  }

  if ((*(a1 + 22) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v173 = *(a1 + 279);
    *a2 = 896;
    a2[2] = v173;
    a2 += 3;
  }

  if (*(a1 + 19))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v174 = *(a1 + 224);
    *a2 = 906;
    v175 = *(v174 + 5);
    if (v175 > 0x7F)
    {
      a2[2] = v175 | 0x80;
      v177 = v175 >> 7;
      if (v175 >> 14)
      {
        v176 = a2 + 4;
        do
        {
          *(v176 - 1) = v177 | 0x80;
          v178 = v177 >> 7;
          ++v176;
          v179 = v177 >> 14;
          v177 >>= 7;
        }

        while (v179);
        *(v176 - 1) = v178;
      }

      else
      {
        a2[3] = v177;
        v176 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v175;
      v176 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v174, v176, this);
  }

  if ((*(a1 + 22) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v180 = *(a1 + 280);
    *a2 = 912;
    a2[2] = v180;
    a2 += 3;
  }

  if ((*(a1 + 19) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v181 = *(a1 + 232);
    *a2 = 922;
    v182 = *(v181 + 5);
    if (v182 > 0x7F)
    {
      a2[2] = v182 | 0x80;
      v184 = v182 >> 7;
      if (v182 >> 14)
      {
        v183 = a2 + 4;
        do
        {
          *(v183 - 1) = v184 | 0x80;
          v185 = v184 >> 7;
          ++v183;
          v186 = v184 >> 14;
          v184 >>= 7;
        }

        while (v186);
        *(v183 - 1) = v185;
      }

      else
      {
        a2[3] = v184;
        v183 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v182;
      v183 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v181, v183, this);
  }

  if ((*(a1 + 22) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v187 = *(a1 + 281);
    *a2 = 928;
    a2[2] = v187;
    a2 += 3;
  }

  if ((*(a1 + 19) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v188 = *(a1 + 240);
    *a2 = 938;
    v189 = *(v188 + 5);
    if (v189 > 0x7F)
    {
      a2[2] = v189 | 0x80;
      v191 = v189 >> 7;
      if (v189 >> 14)
      {
        v190 = a2 + 4;
        do
        {
          *(v190 - 1) = v191 | 0x80;
          v192 = v191 >> 7;
          ++v190;
          v193 = v191 >> 14;
          v191 >>= 7;
        }

        while (v193);
        *(v190 - 1) = v192;
      }

      else
      {
        a2[3] = v191;
        v190 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v189;
      v190 = a2 + 3;
    }

    a2 = TSSSOS::SpecColorArchive::_InternalSerialize(v188, v190, this);
  }

  if ((*(a1 + 22) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v194 = *(a1 + 282);
    *a2 = 944;
    a2[2] = v194;
    a2 += 3;
  }

  if ((*(a1 + 19) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v195 = *(a1 + 248);
    *a2 = 954;
    v196 = *(v195 + 5);
    if (v196 > 0x7F)
    {
      a2[2] = v196 | 0x80;
      v198 = v196 >> 7;
      if (v196 >> 14)
      {
        v197 = a2 + 4;
        do
        {
          *(v197 - 1) = v198 | 0x80;
          v199 = v198 >> 7;
          ++v197;
          v200 = v198 >> 14;
          v198 >>= 7;
        }

        while (v200);
        *(v197 - 1) = v199;
      }

      else
      {
        a2[3] = v198;
        v197 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v196;
      v197 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v195, v197, this);
  }

  if ((*(a1 + 22) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v201 = *(a1 + 283);
    *a2 = 960;
    a2[2] = v201;
    a2 += 3;
  }

  v202 = *(a1 + 8);
  if ((v202 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v202 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_2763D231C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v4 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 32));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v5 = sub_276396D80(*(a1 + 40));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v15 = sub_276396D80(*(a1 + 48));
    v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_96;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v16 = sub_276396D80(*(a1 + 56));
  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_97;
  }

LABEL_96:
  v17 = sub_276396D80(*(a1 + 64));
  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_98;
  }

LABEL_97:
  v18 = sub_276396D80(*(a1 + 72));
  v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_13:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_98:
  v19 = sub_276396D80(*(a1 + 80));
  v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_14:
    v6 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 88));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_25;
  }

  if ((v2 & 0x100) != 0)
  {
    v20 = TSDSOS::SpecFillArchive::ByteSizeLong(*(a1 + 96));
    v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x200) == 0)
    {
LABEL_18:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_102;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  v21 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(a1 + 104));
  v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400) == 0)
  {
LABEL_19:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_103;
  }

LABEL_102:
  v22 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 112));
  v3 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x800) == 0)
  {
LABEL_20:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_104;
  }

LABEL_103:
  v23 = TSDSOS::SpecShadowArchive::ByteSizeLong(*(a1 + 120));
  v3 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x1000) == 0)
  {
LABEL_21:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_105;
  }

LABEL_104:
  v24 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(a1 + 128));
  v3 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x2000) == 0)
  {
LABEL_22:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_106;
  }

LABEL_105:
  v25 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 136));
  v3 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x4000) == 0)
  {
LABEL_23:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_106:
  v26 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 144));
  v3 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x8000) != 0)
  {
LABEL_24:
    v7 = TSDSOS::SpecFillArchive::ByteSizeLong(*(a1 + 152));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_25:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_35;
  }

  if ((v2 & 0x10000) != 0)
  {
    v27 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 160));
    v3 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x20000) == 0)
    {
LABEL_28:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_110;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_28;
  }

  v28 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 168));
  v3 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40000) == 0)
  {
LABEL_29:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_111;
  }

LABEL_110:
  v29 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 176));
  v3 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x80000) == 0)
  {
LABEL_30:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_112;
  }

LABEL_111:
  v30 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 184));
  v3 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x100000) == 0)
  {
LABEL_31:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_113;
  }

LABEL_112:
  v31 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 192));
  v3 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x200000) == 0)
  {
LABEL_32:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_114;
  }

LABEL_113:
  v32 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 200));
  v3 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400000) == 0)
  {
LABEL_33:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_114:
  v33 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 208));
  v3 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x800000) != 0)
  {
LABEL_34:
    v8 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 216));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_35:
  if (!HIBYTE(v2))
  {
    goto LABEL_44;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v34 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 224));
    v3 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x2000000) == 0)
    {
LABEL_38:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_118;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_38;
  }

  v35 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 232));
  v3 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x4000000) == 0)
  {
LABEL_39:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_118:
  v36 = TSSSOS::SpecColorArchive::ByteSizeLong(*(a1 + 240));
  v3 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x8000000) != 0)
  {
LABEL_40:
    v9 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 248));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_41:
  if ((v2 & 0x80000000) == 0)
  {
    v3 += ((v2 >> 28) & 2) + ((v2 >> 27) & 2) + ((v2 >> 29) & 2);
  }

  else
  {
    v3 += ((v2 >> 28) & 2) + ((v2 >> 27) & 2) + ((v2 >> 29) & 2) + 2;
  }

LABEL_44:
  v10 = *(a1 + 20);
  if (v10)
  {
    v11 = v3 + (v10 & 2) + 2 * (v10 & 1) + ((v10 >> 1) & 2);
    if ((v10 & 8) != 0)
    {
      v11 += 3;
    }

    if ((v10 & 0x10) != 0)
    {
      v11 += 3;
    }

    if ((v10 & 0x20) != 0)
    {
      v11 += 3;
    }

    if ((v10 & 0x40) != 0)
    {
      v11 += 3;
    }

    if ((v10 & 0x80) != 0)
    {
      v3 = v11 + 3;
    }

    else
    {
      v3 = v11;
    }
  }

  if ((v10 & 0xFF00) != 0)
  {
    v12 = v3 + 3;
    if ((v10 & 0x100) == 0)
    {
      v12 = v3;
    }

    if ((v10 & 0x200) != 0)
    {
      v12 += 3;
    }

    if ((v10 & 0x400) != 0)
    {
      v12 += 3;
    }

    if ((v10 & 0x800) != 0)
    {
      v12 += 3;
    }

    if ((v10 & 0x1000) != 0)
    {
      v12 += 3;
    }

    if ((v10 & 0x2000) != 0)
    {
      v12 += 3;
    }

    if ((v10 & 0x4000) != 0)
    {
      v12 += 3;
    }

    if ((v10 & 0x8000) != 0)
    {
      v3 = v12 + 3;
    }

    else
    {
      v3 = v12;
    }
  }

  if ((v10 & 0xFF0000) != 0)
  {
    v13 = v3 + 3;
    if ((v10 & 0x10000) == 0)
    {
      v13 = v3;
    }

    if ((v10 & 0x20000) != 0)
    {
      v13 += 3;
    }

    if ((v10 & 0x40000) != 0)
    {
      v13 += 3;
    }

    if ((v10 & 0x80000) != 0)
    {
      v13 += 3;
    }

    if ((v10 & 0x100000) != 0)
    {
      v13 += 3;
    }

    if ((v10 & 0x200000) != 0)
    {
      v13 += 3;
    }

    if ((v10 & 0x400000) != 0)
    {
      v13 += 3;
    }

    if ((v10 & 0x800000) != 0)
    {
      v3 = v13 + 3;
    }

    else
    {
      v3 = v13;
    }
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 24) = v3;
    return v3;
  }
}

uint64_t sub_2763D2AC0(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288520108, 0);
  if (v4)
  {

    return sub_2763D2B68(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_2763D2B68(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if (!v5)
  {
    goto LABEL_77;
  }

  if (v5)
  {
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 32);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = MEMORY[0x277C97C40](v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 32))
    {
      v8 = *(a2 + 32);
    }

    else
    {
      v8 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v6, v8);
  }

  if ((v5 & 2) != 0)
  {
    *(v3 + 16) |= 2u;
    v9 = *(v3 + 40);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = sub_2763D3E1C(v10);
      *(v3 + 40) = v9;
    }

    if (*(a2 + 40))
    {
      v11 = *(a2 + 40);
    }

    else
    {
      v11 = &qword_2812EE760;
    }

    result = sub_276396EB4(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_15:
      if ((v5 & 8) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_37;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_15;
  }

  *(v3 + 16) |= 4u;
  v12 = *(v3 + 48);
  if (!v12)
  {
    v13 = *(v3 + 8);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = sub_2763D3E1C(v13);
    *(v3 + 48) = v12;
  }

  if (*(a2 + 48))
  {
    v14 = *(a2 + 48);
  }

  else
  {
    v14 = &qword_2812EE760;
  }

  result = sub_276396EB4(v12, v14);
  if ((v5 & 8) == 0)
  {
LABEL_16:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_37:
  *(v3 + 16) |= 8u;
  v15 = *(v3 + 56);
  if (!v15)
  {
    v16 = *(v3 + 8);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v15 = sub_2763D3E1C(v16);
    *(v3 + 56) = v15;
  }

  if (*(a2 + 56))
  {
    v17 = *(a2 + 56);
  }

  else
  {
    v17 = &qword_2812EE760;
  }

  result = sub_276396EB4(v15, v17);
  if ((v5 & 0x10) == 0)
  {
LABEL_17:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_18;
    }

LABEL_53:
    *(v3 + 16) |= 0x20u;
    v21 = *(v3 + 72);
    if (!v21)
    {
      v22 = *(v3 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = sub_2763D3E1C(v22);
      *(v3 + 72) = v21;
    }

    if (*(a2 + 72))
    {
      v23 = *(a2 + 72);
    }

    else
    {
      v23 = &qword_2812EE760;
    }

    result = sub_276396EB4(v21, v23);
    if ((v5 & 0x40) == 0)
    {
LABEL_19:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_69;
    }

    goto LABEL_61;
  }

LABEL_45:
  *(v3 + 16) |= 0x10u;
  v18 = *(v3 + 64);
  if (!v18)
  {
    v19 = *(v3 + 8);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    v18 = sub_2763D3E1C(v19);
    *(v3 + 64) = v18;
  }

  if (*(a2 + 64))
  {
    v20 = *(a2 + 64);
  }

  else
  {
    v20 = &qword_2812EE760;
  }

  result = sub_276396EB4(v18, v20);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_53;
  }

LABEL_18:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_19;
  }

LABEL_61:
  *(v3 + 16) |= 0x40u;
  v24 = *(v3 + 80);
  if (!v24)
  {
    v25 = *(v3 + 8);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    v24 = sub_2763D3E1C(v25);
    *(v3 + 80) = v24;
  }

  if (*(a2 + 80))
  {
    v26 = *(a2 + 80);
  }

  else
  {
    v26 = &qword_2812EE760;
  }

  result = sub_276396EB4(v24, v26);
  if ((v5 & 0x80) != 0)
  {
LABEL_69:
    *(v3 + 16) |= 0x80u;
    v27 = *(v3 + 88);
    if (!v27)
    {
      v28 = *(v3 + 8);
      if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
      }

      v27 = MEMORY[0x277C97C20](v28);
      *(v3 + 88) = v27;
    }

    if (*(a2 + 88))
    {
      v29 = *(a2 + 88);
    }

    else
    {
      v29 = MEMORY[0x277D80BF8];
    }

    result = TSSSOS::SpecBoolArchive::MergeFrom(v27, v29);
  }

LABEL_77:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_151;
  }

  v30 = MEMORY[0x277D80530];
  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v31 = *(v3 + 96);
    if (!v31)
    {
      v32 = *(v3 + 8);
      if (v32)
      {
        v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
      }

      v31 = MEMORY[0x277C97BE0](v32);
      *(v3 + 96) = v31;
    }

    if (*(a2 + 96))
    {
      v33 = *(a2 + 96);
    }

    else
    {
      v33 = v30;
    }

    result = TSDSOS::SpecFillArchive::MergeFrom(v31, v33);
  }

  v34 = MEMORY[0x277D80540];
  if ((v5 & 0x200) != 0)
  {
    *(v3 + 16) |= 0x200u;
    v35 = *(v3 + 104);
    if (!v35)
    {
      v36 = *(v3 + 8);
      if (v36)
      {
        v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
      }

      v35 = MEMORY[0x277C97C00](v36);
      *(v3 + 104) = v35;
    }

    if (*(a2 + 104))
    {
      v37 = *(a2 + 104);
    }

    else
    {
      v37 = v34;
    }

    result = TSDSOS::SpecStrokeArchive::MergeFrom(v35, v37);
    if ((v5 & 0x400) == 0)
    {
LABEL_89:
      if ((v5 & 0x800) == 0)
      {
        goto LABEL_90;
      }

      goto LABEL_111;
    }
  }

  else if ((v5 & 0x400) == 0)
  {
    goto LABEL_89;
  }

  *(v3 + 16) |= 0x400u;
  v38 = *(v3 + 112);
  if (!v38)
  {
    v39 = *(v3 + 8);
    if (v39)
    {
      v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
    }

    v38 = MEMORY[0x277C97C40](v39);
    *(v3 + 112) = v38;
  }

  if (*(a2 + 112))
  {
    v40 = *(a2 + 112);
  }

  else
  {
    v40 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v38, v40);
  if ((v5 & 0x800) == 0)
  {
LABEL_90:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_119;
  }

LABEL_111:
  *(v3 + 16) |= 0x800u;
  v41 = *(v3 + 120);
  if (!v41)
  {
    v42 = *(v3 + 8);
    if (v42)
    {
      v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
    }

    v41 = MEMORY[0x277C97BF0](v42);
    *(v3 + 120) = v41;
  }

  if (*(a2 + 120))
  {
    v43 = *(a2 + 120);
  }

  else
  {
    v43 = MEMORY[0x277D80538];
  }

  result = TSDSOS::SpecShadowArchive::MergeFrom(v41, v43);
  if ((v5 & 0x1000) == 0)
  {
LABEL_91:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_127;
  }

LABEL_119:
  *(v3 + 16) |= 0x1000u;
  v44 = *(v3 + 128);
  if (!v44)
  {
    v45 = *(v3 + 8);
    if (v45)
    {
      v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
    }

    v44 = MEMORY[0x277C97C00](v45);
    *(v3 + 128) = v44;
  }

  if (*(a2 + 128))
  {
    v46 = *(a2 + 128);
  }

  else
  {
    v46 = v34;
  }

  result = TSDSOS::SpecStrokeArchive::MergeFrom(v44, v46);
  if ((v5 & 0x2000) == 0)
  {
LABEL_92:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_135;
  }

LABEL_127:
  *(v3 + 16) |= 0x2000u;
  v47 = *(v3 + 136);
  if (!v47)
  {
    v48 = *(v3 + 8);
    if (v48)
    {
      v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
    }

    v47 = MEMORY[0x277C97C20](v48);
    *(v3 + 136) = v47;
  }

  if (*(a2 + 136))
  {
    v49 = *(a2 + 136);
  }

  else
  {
    v49 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v47, v49);
  if ((v5 & 0x4000) == 0)
  {
LABEL_93:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_143;
  }

LABEL_135:
  *(v3 + 16) |= 0x4000u;
  v50 = *(v3 + 144);
  if (!v50)
  {
    v51 = *(v3 + 8);
    if (v51)
    {
      v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
    }

    v50 = MEMORY[0x277C97C60](v51);
    *(v3 + 144) = v50;
  }

  if (*(a2 + 144))
  {
    v52 = *(a2 + 144);
  }

  else
  {
    v52 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v50, v52);
  if ((v5 & 0x8000) != 0)
  {
LABEL_143:
    *(v3 + 16) |= 0x8000u;
    v53 = *(v3 + 152);
    if (!v53)
    {
      v54 = *(v3 + 8);
      if (v54)
      {
        v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
      }

      v53 = MEMORY[0x277C97BE0](v54);
      *(v3 + 152) = v53;
    }

    if (*(a2 + 152))
    {
      v55 = *(a2 + 152);
    }

    else
    {
      v55 = v30;
    }

    result = TSDSOS::SpecFillArchive::MergeFrom(v53, v55);
  }

LABEL_151:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_225;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 16) |= 0x10000u;
    v56 = *(v3 + 160);
    if (!v56)
    {
      v57 = *(v3 + 8);
      if (v57)
      {
        v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
      }

      v56 = MEMORY[0x277C97C40](v57);
      *(v3 + 160) = v56;
    }

    if (*(a2 + 160))
    {
      v58 = *(a2 + 160);
    }

    else
    {
      v58 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v56, v58);
    if ((v5 & 0x20000) == 0)
    {
LABEL_154:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_155;
      }

      goto LABEL_177;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_154;
  }

  *(v3 + 16) |= 0x20000u;
  v59 = *(v3 + 168);
  if (!v59)
  {
    v60 = *(v3 + 8);
    if (v60)
    {
      v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
    }

    v59 = MEMORY[0x277C97C40](v60);
    *(v3 + 168) = v59;
  }

  if (*(a2 + 168))
  {
    v61 = *(a2 + 168);
  }

  else
  {
    v61 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v59, v61);
  if ((v5 & 0x40000) == 0)
  {
LABEL_155:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_185;
  }

LABEL_177:
  *(v3 + 16) |= 0x40000u;
  v62 = *(v3 + 176);
  if (!v62)
  {
    v63 = *(v3 + 8);
    if (v63)
    {
      v63 = *(v63 & 0xFFFFFFFFFFFFFFFELL);
    }

    v62 = MEMORY[0x277C97C40](v63);
    *(v3 + 176) = v62;
  }

  if (*(a2 + 176))
  {
    v64 = *(a2 + 176);
  }

  else
  {
    v64 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v62, v64);
  if ((v5 & 0x80000) == 0)
  {
LABEL_156:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_193;
  }

LABEL_185:
  *(v3 + 16) |= 0x80000u;
  v65 = *(v3 + 184);
  if (!v65)
  {
    v66 = *(v3 + 8);
    if (v66)
    {
      v66 = *(v66 & 0xFFFFFFFFFFFFFFFELL);
    }

    v65 = MEMORY[0x277C97C20](v66);
    *(v3 + 184) = v65;
  }

  if (*(a2 + 184))
  {
    v67 = *(a2 + 184);
  }

  else
  {
    v67 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v65, v67);
  if ((v5 & 0x100000) == 0)
  {
LABEL_157:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_201;
  }

LABEL_193:
  *(v3 + 16) |= 0x100000u;
  v68 = *(v3 + 192);
  if (!v68)
  {
    v69 = *(v3 + 8);
    if (v69)
    {
      v69 = *(v69 & 0xFFFFFFFFFFFFFFFELL);
    }

    v68 = MEMORY[0x277C97C20](v69);
    *(v3 + 192) = v68;
  }

  if (*(a2 + 192))
  {
    v70 = *(a2 + 192);
  }

  else
  {
    v70 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v68, v70);
  if ((v5 & 0x200000) == 0)
  {
LABEL_158:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_209;
  }

LABEL_201:
  *(v3 + 16) |= 0x200000u;
  v71 = *(v3 + 200);
  if (!v71)
  {
    v72 = *(v3 + 8);
    if (v72)
    {
      v72 = *(v72 & 0xFFFFFFFFFFFFFFFELL);
    }

    v71 = MEMORY[0x277C97C40](v72);
    *(v3 + 200) = v71;
  }

  if (*(a2 + 200))
  {
    v73 = *(a2 + 200);
  }

  else
  {
    v73 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v71, v73);
  if ((v5 & 0x400000) == 0)
  {
LABEL_159:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_225;
    }

    goto LABEL_217;
  }

LABEL_209:
  *(v3 + 16) |= 0x400000u;
  v74 = *(v3 + 208);
  if (!v74)
  {
    v75 = *(v3 + 8);
    if (v75)
    {
      v75 = *(v75 & 0xFFFFFFFFFFFFFFFELL);
    }

    v74 = MEMORY[0x277C97C20](v75);
    *(v3 + 208) = v74;
  }

  if (*(a2 + 208))
  {
    v76 = *(a2 + 208);
  }

  else
  {
    v76 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v74, v76);
  if ((v5 & 0x800000) != 0)
  {
LABEL_217:
    *(v3 + 16) |= 0x800000u;
    v77 = *(v3 + 216);
    if (!v77)
    {
      v78 = *(v3 + 8);
      if (v78)
      {
        v78 = *(v78 & 0xFFFFFFFFFFFFFFFELL);
      }

      v77 = MEMORY[0x277C97C40](v78);
      *(v3 + 216) = v77;
    }

    if (*(a2 + 216))
    {
      v79 = *(a2 + 216);
    }

    else
    {
      v79 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v77, v79);
  }

LABEL_225:
  if (!HIBYTE(v5))
  {
    goto LABEL_235;
  }

  if ((v5 & 0x1000000) != 0)
  {
    *(v3 + 16) |= 0x1000000u;
    v81 = *(v3 + 224);
    if (!v81)
    {
      v82 = *(v3 + 8);
      if (v82)
      {
        v82 = *(v82 & 0xFFFFFFFFFFFFFFFELL);
      }

      v81 = MEMORY[0x277C97C60](v82);
      *(v3 + 224) = v81;
    }

    if (*(a2 + 224))
    {
      v83 = *(a2 + 224);
    }

    else
    {
      v83 = MEMORY[0x277D80C18];
    }

    result = TSSSOS::SpecIntegerArchive::MergeFrom(v81, v83);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_228:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_229;
      }

      goto LABEL_309;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_228;
  }

  *(v3 + 16) |= 0x2000000u;
  v84 = *(v3 + 232);
  if (!v84)
  {
    v85 = *(v3 + 8);
    if (v85)
    {
      v85 = *(v85 & 0xFFFFFFFFFFFFFFFELL);
    }

    v84 = MEMORY[0x277C97C60](v85);
    *(v3 + 232) = v84;
  }

  if (*(a2 + 232))
  {
    v86 = *(a2 + 232);
  }

  else
  {
    v86 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v84, v86);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_229:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_230;
    }

    goto LABEL_317;
  }

LABEL_309:
  *(v3 + 16) |= 0x4000000u;
  v87 = *(v3 + 240);
  if (!v87)
  {
    v88 = *(v3 + 8);
    if (v88)
    {
      v88 = *(v88 & 0xFFFFFFFFFFFFFFFELL);
    }

    v87 = MEMORY[0x277C97C30](v88);
    *(v3 + 240) = v87;
  }

  if (*(a2 + 240))
  {
    v89 = *(a2 + 240);
  }

  else
  {
    v89 = MEMORY[0x277D80C00];
  }

  result = TSSSOS::SpecColorArchive::MergeFrom(v87, v89);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_230:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_231;
    }

    goto LABEL_325;
  }

LABEL_317:
  *(v3 + 16) |= 0x8000000u;
  v90 = *(v3 + 248);
  if (!v90)
  {
    v91 = *(v3 + 8);
    if (v91)
    {
      v91 = *(v91 & 0xFFFFFFFFFFFFFFFELL);
    }

    v90 = MEMORY[0x277C97C60](v91);
    *(v3 + 248) = v90;
  }

  if (*(a2 + 248))
  {
    v92 = *(a2 + 248);
  }

  else
  {
    v92 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v90, v92);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_231:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_232;
    }

    goto LABEL_326;
  }

LABEL_325:
  *(v3 + 256) = *(a2 + 256);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_232:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_233;
    }

LABEL_327:
    *(v3 + 258) = *(a2 + 258);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_234;
    }

LABEL_328:
    *(v3 + 259) = *(a2 + 259);
    goto LABEL_234;
  }

LABEL_326:
  *(v3 + 257) = *(a2 + 257);
  if ((v5 & 0x40000000) != 0)
  {
    goto LABEL_327;
  }

LABEL_233:
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_328;
  }

LABEL_234:
  *(v3 + 16) |= v5;
LABEL_235:
  v80 = *(a2 + 20);
  if (!v80)
  {
    goto LABEL_246;
  }

  if (v80)
  {
    *(v3 + 260) = *(a2 + 260);
    if ((v80 & 2) == 0)
    {
LABEL_238:
      if ((v80 & 4) == 0)
      {
        goto LABEL_239;
      }

      goto LABEL_271;
    }
  }

  else if ((v80 & 2) == 0)
  {
    goto LABEL_238;
  }

  *(v3 + 261) = *(a2 + 261);
  if ((v80 & 4) == 0)
  {
LABEL_239:
    if ((v80 & 8) == 0)
    {
      goto LABEL_240;
    }

    goto LABEL_272;
  }

LABEL_271:
  *(v3 + 262) = *(a2 + 262);
  if ((v80 & 8) == 0)
  {
LABEL_240:
    if ((v80 & 0x10) == 0)
    {
      goto LABEL_241;
    }

    goto LABEL_273;
  }

LABEL_272:
  *(v3 + 263) = *(a2 + 263);
  if ((v80 & 0x10) == 0)
  {
LABEL_241:
    if ((v80 & 0x20) == 0)
    {
      goto LABEL_242;
    }

    goto LABEL_274;
  }

LABEL_273:
  *(v3 + 264) = *(a2 + 264);
  if ((v80 & 0x20) == 0)
  {
LABEL_242:
    if ((v80 & 0x40) == 0)
    {
      goto LABEL_243;
    }

LABEL_275:
    *(v3 + 266) = *(a2 + 266);
    if ((v80 & 0x80) == 0)
    {
      goto LABEL_245;
    }

    goto LABEL_244;
  }

LABEL_274:
  *(v3 + 265) = *(a2 + 265);
  if ((v80 & 0x40) != 0)
  {
    goto LABEL_275;
  }

LABEL_243:
  if ((v80 & 0x80) != 0)
  {
LABEL_244:
    *(v3 + 267) = *(a2 + 267);
  }

LABEL_245:
  *(v3 + 20) |= v80;
LABEL_246:
  if ((v80 & 0xFF00) == 0)
  {
    goto LABEL_257;
  }

  if ((v80 & 0x100) != 0)
  {
    *(v3 + 268) = *(a2 + 268);
    if ((v80 & 0x200) == 0)
    {
LABEL_249:
      if ((v80 & 0x400) == 0)
      {
        goto LABEL_250;
      }

      goto LABEL_279;
    }
  }

  else if ((v80 & 0x200) == 0)
  {
    goto LABEL_249;
  }

  *(v3 + 269) = *(a2 + 269);
  if ((v80 & 0x400) == 0)
  {
LABEL_250:
    if ((v80 & 0x800) == 0)
    {
      goto LABEL_251;
    }

    goto LABEL_280;
  }

LABEL_279:
  *(v3 + 270) = *(a2 + 270);
  if ((v80 & 0x800) == 0)
  {
LABEL_251:
    if ((v80 & 0x1000) == 0)
    {
      goto LABEL_252;
    }

    goto LABEL_281;
  }

LABEL_280:
  *(v3 + 271) = *(a2 + 271);
  if ((v80 & 0x1000) == 0)
  {
LABEL_252:
    if ((v80 & 0x2000) == 0)
    {
      goto LABEL_253;
    }

    goto LABEL_282;
  }

LABEL_281:
  *(v3 + 272) = *(a2 + 272);
  if ((v80 & 0x2000) == 0)
  {
LABEL_253:
    if ((v80 & 0x4000) == 0)
    {
      goto LABEL_254;
    }

LABEL_283:
    *(v3 + 274) = *(a2 + 274);
    if ((v80 & 0x8000) == 0)
    {
      goto LABEL_256;
    }

    goto LABEL_255;
  }

LABEL_282:
  *(v3 + 273) = *(a2 + 273);
  if ((v80 & 0x4000) != 0)
  {
    goto LABEL_283;
  }

LABEL_254:
  if ((v80 & 0x8000) != 0)
  {
LABEL_255:
    *(v3 + 275) = *(a2 + 275);
  }

LABEL_256:
  *(v3 + 20) |= v80;
LABEL_257:
  if ((v80 & 0xFF0000) == 0)
  {
    return result;
  }

  if ((v80 & 0x10000) != 0)
  {
    *(v3 + 276) = *(a2 + 276);
    if ((v80 & 0x20000) == 0)
    {
LABEL_260:
      if ((v80 & 0x40000) == 0)
      {
        goto LABEL_261;
      }

      goto LABEL_287;
    }
  }

  else if ((v80 & 0x20000) == 0)
  {
    goto LABEL_260;
  }

  *(v3 + 277) = *(a2 + 277);
  if ((v80 & 0x40000) == 0)
  {
LABEL_261:
    if ((v80 & 0x80000) == 0)
    {
      goto LABEL_262;
    }

    goto LABEL_288;
  }

LABEL_287:
  *(v3 + 278) = *(a2 + 278);
  if ((v80 & 0x80000) == 0)
  {
LABEL_262:
    if ((v80 & 0x100000) == 0)
    {
      goto LABEL_263;
    }

    goto LABEL_289;
  }

LABEL_288:
  *(v3 + 279) = *(a2 + 279);
  if ((v80 & 0x100000) == 0)
  {
LABEL_263:
    if ((v80 & 0x200000) == 0)
    {
      goto LABEL_264;
    }

    goto LABEL_290;
  }

LABEL_289:
  *(v3 + 280) = *(a2 + 280);
  if ((v80 & 0x200000) == 0)
  {
LABEL_264:
    if ((v80 & 0x400000) == 0)
    {
      goto LABEL_265;
    }

LABEL_291:
    *(v3 + 282) = *(a2 + 282);
    if ((v80 & 0x800000) == 0)
    {
      goto LABEL_267;
    }

    goto LABEL_266;
  }

LABEL_290:
  *(v3 + 281) = *(a2 + 281);
  if ((v80 & 0x400000) != 0)
  {
    goto LABEL_291;
  }

LABEL_265:
  if ((v80 & 0x800000) != 0)
  {
LABEL_266:
    *(v3 + 283) = *(a2 + 283);
  }

LABEL_267:
  *(v3 + 20) |= v80;
  return result;
}

uint64_t *sub_2763D3664(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2763CF2F8(result);

    return sub_2763D2AC0(v4, a2);
  }

  return result;
}

uint64_t sub_2763D36B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = sub_276396FA8(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = sub_276396FA8(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = sub_276396FA8(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) != 0)
  {
    result = sub_276396FA8(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20) != 0)
  {
    result = sub_276396FA8(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40) != 0)
  {
    result = sub_276396FA8(*(a1 + 80));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100) != 0)
  {
    result = TSDSOS::SpecFillArchive::IsInitialized(*(a1 + 96));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x200) != 0)
  {
    result = TSDSOS::SpecStrokeArchive::IsInitialized(*(a1 + 104));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x400) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 112));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x800) != 0)
  {
    result = TSDSOS::SpecShadowArchive::IsInitialized(*(a1 + 120));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x1000) != 0)
  {
    result = TSDSOS::SpecStrokeArchive::IsInitialized(*(a1 + 128));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x2000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 136));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x4000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 144));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x8000) != 0)
  {
    result = TSDSOS::SpecFillArchive::IsInitialized(*(a1 + 152));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 160));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 168));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 176));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 184));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 192));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x200000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 200));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x400000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 208));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x800000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 216));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x1000000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 224));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x2000000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 232));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x4000000) != 0)
  {
    result = TSSSOS::SpecColorArchive::IsInitialized(*(a1 + 240));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x8000000) == 0)
  {
    return 1;
  }

  result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 248));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_2763D3940(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2763D5100(a1);
}

uint64_t sub_2763D3A10(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2763D5204(a1);
}

uint64_t sub_2763D3AE0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2763D5308(a1);
}

uint64_t sub_2763D3BB0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2763D540C(a1);
}

uint64_t sub_2763D3C80(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2763D5510(a1);
}

uint64_t sub_2763D3D50(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2763D5614(a1);
}

void *sub_2763D3E20(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2763D5718(a1);
}

void *sub_2763D3EEC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2763D5818(a1);
}

void *sub_2763D3FB8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2763D5918(a1);
}

void *sub_2763D4084(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2763D5A18(a1);
}

void *sub_2763D4150(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2763D5B18(a1);
}

void *sub_2763D421C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2763D5C18(a1);
}

uint64_t sub_2763D42E8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2763D5D18(a1);
}

uint64_t sub_2763D43D8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2763D5E3C(a1);
}

uint64_t sub_2763D44E0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_2763D5F78(a1, 1);
  *result = &unk_28851F9A0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_2763D4550(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2763D6020(a1);
}

uint64_t sub_2763D4628(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2763D612C(a1);
}

uint64_t sub_2763D4724(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2763D625C(a1);
}

uint64_t sub_2763D4800(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2763D636C(a1);
}

uint64_t sub_2763D48D8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2763D6478(a1);
}

uint64_t sub_2763D49B0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2763D6584(a1);
}

uint64_t sub_2763D4A8C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2763D6694(a1);
}

uint64_t sub_2763D4D98(uint64_t a1, uint64_t *a2)
{
  if (*a2 >= *a1)
  {
    v5 = *a2 - *(a1 + 8);
    if (*(a1 + 28) == v5)
    {
      if (v5 >= 1 && !*(a1 + 16))
      {
        *a2 = 0;
      }

      v2 = 1;
    }

    else
    {
      *a2 = google::protobuf::internal::EpsCopyInputStream::DoneFallback(a1);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t *sub_2763D4E10(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v2 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  sub_2763D4E58(v2);
  *a1 = v3 | 1;
  *v3 = v2;
  return v3 + 1;
}

double sub_2763D4E58(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v1 = sub_2763D4E9C(a1, 0);
  result = 0.0;
  *v1 = 0u;
  v1[1] = 0u;
  return result;
}

uint64_t sub_2763D4E9C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AA080(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_2763D4F24);
}

void sub_2763D4F24(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = (a1 + 8);
  if (v3 != v4)
  {
    google::protobuf::UnknownFieldSet::ClearFallback(v5);
    v3 = *v5;
  }

  if (v3)
  {
    *(a1 + 16) = v3;

    operator delete(v3);
  }
}

uint64_t sub_2763D4F88(uint64_t *a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    v3 = sub_2763D4E10(a1);
  }

  return MEMORY[0x2821EAB30](v3, a2);
}

uint64_t *sub_2763D4FD4(uint64_t *a1)
{
  if (*a1)
  {
    result = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    result = sub_2763D4E10(a1);
  }

  if (*result != result[1])
  {

    return google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t *sub_2763D5024(uint64_t *a1, uint64_t *a2)
{
  if (*a1)
  {
    result = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    result = sub_2763D4E10(a1);
  }

  v4 = *result;
  *result = *a2;
  *a2 = v4;
  v5 = result[1];
  result[1] = a2[1];
  a2[1] = v5;
  v6 = result[2];
  result[2] = a2[2];
  a2[2] = v6;
  return result;
}

__n128 sub_2763D508C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *a1 = *a2;
  *a2 = v2;
  *(a2 + 8) = v3;
  v4 = a1[2];
  v5 = a1[3];
  *(a1 + 1) = *(a2 + 16);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  v6 = a1[4];
  v7 = a1[5];
  *(a1 + 2) = *(a2 + 32);
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  v8 = a1[6];
  v9 = a1[7];
  *(a1 + 3) = *(a2 + 48);
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  v10 = a1[8];
  v11 = a1[9];
  result = *(a2 + 64);
  *(a1 + 4) = result;
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  v13 = a1[10];
  a1[10] = *(a2 + 80);
  *(a2 + 80) = v13;
  LODWORD(v13) = *(a1 + 22);
  *(a1 + 22) = *(a2 + 88);
  *(a2 + 88) = v13;
  return result;
}

uint64_t sub_2763D5100(uint64_t a1)
{
  v2 = sub_2763D5178(a1, 1);
  *v2 = &unk_28851F000;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EC978, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_2763D5178(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AA0B0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_2763D5200);
}

uint64_t sub_2763D5204(uint64_t a1)
{
  v2 = sub_2763D527C(a1, 1);
  *v2 = &unk_28851F0B0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EC998, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_2763D527C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AA0E0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_2763D5304);
}

uint64_t sub_2763D5308(uint64_t a1)
{
  v2 = sub_2763D5380(a1, 1);
  *v2 = &unk_28851F160;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EC9B8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_2763D5380(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AA110(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_2763D5408);
}

uint64_t sub_2763D540C(uint64_t a1)
{
  v2 = sub_2763D5484(a1, 1);
  *v2 = &unk_28851F210;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EC9D8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_2763D5484(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AA140(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_2763D550C);
}

uint64_t sub_2763D5510(uint64_t a1)
{
  v2 = sub_2763D5588(a1, 1);
  *v2 = &unk_28851F2C0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EC9F8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_2763D5588(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AA170(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_2763D5610);
}

uint64_t sub_2763D5614(uint64_t a1)
{
  v2 = sub_2763D568C(a1, 1);
  *v2 = &unk_28851F370;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812ECA18, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_2763D568C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AA1A0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_2763D5714);
}

void *sub_2763D5718(uint64_t a1)
{
  v2 = sub_2763D578C(a1, 1);
  *v2 = &unk_28851F420;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EC8B8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_2763D578C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AA1D0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_2763D5814);
}

void *sub_2763D5818(uint64_t a1)
{
  v2 = sub_2763D588C(a1, 1);
  *v2 = &unk_28851F4D0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EC8D8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_2763D588C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AA200(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_2763D5914);
}

void *sub_2763D5918(uint64_t a1)
{
  v2 = sub_2763D598C(a1, 1);
  *v2 = &unk_28851F580;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EC8F8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_2763D598C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AA230(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_2763D5A14);
}

void *sub_2763D5A18(uint64_t a1)
{
  v2 = sub_2763D5A8C(a1, 1);
  *v2 = &unk_28851F630;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EC918, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_2763D5A8C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AA260(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_2763D5B14);
}

void *sub_2763D5B18(uint64_t a1)
{
  v2 = sub_2763D5B8C(a1, 1);
  *v2 = &unk_28851F6E0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EC938, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_2763D5B8C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AA290(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_2763D5C14);
}

void *sub_2763D5C18(uint64_t a1)
{
  v2 = sub_2763D5C8C(a1, 1);
  *v2 = &unk_28851F790;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EC958, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_2763D5C8C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AA2C0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_2763D5D14);
}

uint64_t sub_2763D5D18(uint64_t a1)
{
  v2 = sub_2763D5DB0(a1, 1);
  *v2 = &unk_28851F840;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  if (atomic_load_explicit(dword_2812EC620, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 240) = 0;
  *(v2 + 208) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 32) = 0u;
  return v2;
}

uint64_t sub_2763D5DB0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AA2F0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 248, sub_2763D5E38);
}

uint64_t sub_2763D5E3C(uint64_t a1)
{
  v2 = sub_2763D5EEC(a1, 1);
  *v2 = &unk_28851F8F0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  if (atomic_load_explicit(dword_2812EC670, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 400) = 0u;
  *(v2 + 416) = 0u;
  *(v2 + 368) = 0u;
  *(v2 + 384) = 0u;
  *(v2 + 336) = 0u;
  *(v2 + 352) = 0u;
  *(v2 + 304) = 0u;
  *(v2 + 320) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 288) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 208) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 430) = 0u;
  return v2;
}

uint64_t sub_2763D5EEC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AA32C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 448, sub_2763D5F74);
}

uint64_t sub_2763D5F78(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AA368(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 24, sub_2763D6000);
}

uint64_t sub_2763D6020(uint64_t a1)
{
  v2 = sub_2763D60A0(a1, 1);
  *v2 = &unk_28851FA50;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EC6C8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 53) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_2763D60A0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AA3A4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, sub_2763D6128);
}

uint64_t sub_2763D612C(uint64_t a1)
{
  v2 = sub_2763D61D0(a1, 1);
  *v2 = &unk_28851FB00;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  if (atomic_load_explicit(dword_2812EC708, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 320) = 0u;
  *(v2 + 336) = 0u;
  *(v2 + 288) = 0u;
  *(v2 + 304) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 349) = 0u;
  return v2;
}

uint64_t sub_2763D61D0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AA3E0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 368, sub_2763D6258);
}

uint64_t sub_2763D625C(uint64_t a1)
{
  v2 = sub_2763D62E0(a1, 1);
  *v2 = &unk_28851FBB0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EC758, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 70) = 0;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_2763D62E0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AA41C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 80, sub_2763D6368);
}

uint64_t sub_2763D636C(uint64_t a1)
{
  v2 = sub_2763D63EC(a1, 1);
  *v2 = &unk_28851FC60;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EC790, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 56) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_2763D63EC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AA458(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, sub_2763D6474);
}

uint64_t sub_2763D6478(uint64_t a1)
{
  v2 = sub_2763D64F8(a1, 1);
  *v2 = &unk_28851FD10;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  if (atomic_load_explicit(dword_2812EC7C0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  bzero((v2 + 48), 0x372uLL);
  return v2;
}

uint64_t sub_2763D64F8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AA494(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 936, sub_2763D6580);
}

uint64_t sub_2763D6584(uint64_t a1)
{
  v2 = sub_2763D6608(a1, 1);
  *v2 = &unk_28851FDC0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  if (atomic_load_explicit(dword_2812EC810, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  bzero((v2 + 56), 0x426uLL);
  return v2;
}

uint64_t sub_2763D6608(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AA4D0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 1120, sub_2763D6690);
}

uint64_t sub_2763D6694(uint64_t a1)
{
  v2 = sub_2763D6734(a1, 1);
  *v2 = &unk_28851FE70;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  if (atomic_load_explicit(dword_2812EC860, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 208) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 268) = 0u;
  return v2;
}

uint64_t sub_2763D6734(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AA50C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 288, sub_2763D67BC);
}

uint64_t sub_2763D6800(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EFF68 = v4;
  TSCH::_CachedAxisDataFormatterPersistableStyleObject_default_instance_ = &unk_288521B78;
  if (atomic_load_explicit(scc_info_CachedAxisDataFormatterPersistableStyleObject_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EFF78 = 0;
  unk_2812EFF80 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCH::_CachedAxisDataFormatterPersistableStyleObject_default_instance_);
}

uint64_t sub_2763D68B0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  TSCH::CachedDataFormatterPersistableStyleObjects::CachedDataFormatterPersistableStyleObjects(&TSCH::_CachedDataFormatterPersistableStyleObjects_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCH::_CachedDataFormatterPersistableStyleObjects_default_instance_);
}

uint64_t sub_2763D6920(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812EFF90 = v4;
  TSCH::_CachedSeriesDataFormatterPersistableStyleObject_default_instance_ = &unk_288521C28;
  if (atomic_load_explicit(scc_info_CachedSeriesDataFormatterPersistableStyleObject_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812EFFA8 = 0;
  qword_2812EFFA0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCH::_CachedSeriesDataFormatterPersistableStyleObject_default_instance_);
}

uint64_t sub_2763D69D4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  TSCH::ChartArchive::ChartArchive(&TSCH::_ChartArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCH::_ChartArchive_default_instance_);
}

uint64_t sub_2763D6A44(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  qword_2812EFC10 = 0;
  unk_2812EFC18 = 0;
  TSCH::_ChartAxisIDArchive_default_instance_ = &unk_288520FC8;
  qword_2812EFC20 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCH::_ChartAxisIDArchive_default_instance_);
}

uint64_t sub_2763D6AC0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  TSCH::ChartAxisReferenceLineNonStylesArchive::ChartAxisReferenceLineNonStylesArchive(&TSCH::_ChartAxisReferenceLineNonStylesArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCH::_ChartAxisReferenceLineNonStylesArchive_default_instance_);
}

uint64_t sub_2763D6B30(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  TSCH::ChartAxisReferenceLineSparseNonStylesArchive::ChartAxisReferenceLineSparseNonStylesArchive(&TSCH::_ChartAxisReferenceLineSparseNonStylesArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCH::_ChartAxisReferenceLineSparseNonStylesArchive_default_instance_);
}

uint64_t sub_2763D6BA0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812EFDF0 = v4;
  TSCH::_ChartAxisReferenceLineStylesArchive_default_instance_ = &unk_2885216A8;
  if (atomic_load_explicit(scc_info_ChartAxisReferenceLineStylesArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EFE00 = 0;
  unk_2812EFE08 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCH::_ChartAxisReferenceLineStylesArchive_default_instance_);
}

uint64_t sub_2763D6C50(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EFCD8 = v4;
  TSCH::_ChartCDESelectionArchive_default_instance_ = &unk_288521288;
  if (atomic_load_explicit(scc_info_ChartCDESelectionArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EFCE8 = 0;
  unk_2812EFCF0 = 0;
  dword_2812EFD00 = 0;
  qword_2812EFCF8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCH::_ChartCDESelectionArchive_default_instance_);
}

uint64_t sub_2763D6D08(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  TSCH::ChartDrawableArchive::ChartDrawableArchive(&TSCH::_ChartDrawableArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCH::_ChartDrawableArchive_default_instance_);
}

uint64_t sub_2763D6D78(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  TSCH::ChartFillSetArchive::ChartFillSetArchive(&TSCH::_ChartFillSetArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCH::_ChartFillSetArchive_default_instance_);
}

uint64_t sub_2763D6DE8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  TSCH::_ChartFormatStructExtensions_default_instance_ = &unk_288521498;
  *algn_2812EFD78 = 0;
  dword_2812EFD80 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCH::_ChartFormatStructExtensions_default_instance_);
}

uint64_t sub_2763D6E60(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  TSCH::ChartGarlicLabelFormatUpgrade::ChartGarlicLabelFormatUpgrade(&TSCH::_ChartGarlicLabelFormatUpgrade_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCH::_ChartGarlicLabelFormatUpgrade_default_instance_);
}

uint64_t sub_2763D6ED0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  TSCH::_ChartGarlicMinMaxUpgrade_default_instance_ = &unk_288520368;
  *algn_2812EF7E8 = 0;
  xmmword_2812EF7F0 = 0u;
  unk_2812EF800 = 0u;
  qword_2812EF810 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCH::_ChartGarlicMinMaxUpgrade_default_instance_);
}

uint64_t sub_2763D6F50(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  TSCH::ChartGridArchive::ChartGridArchive(&TSCH::_ChartGridArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCH::_ChartGridArchive_default_instance_);
}

uint64_t sub_2763D6FC0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  TSCH::ChartGridArchive_ChartGridRowColumnIdMap::ChartGridArchive_ChartGridRowColumnIdMap(&TSCH::_ChartGridArchive_ChartGridRowColumnIdMap_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCH::_ChartGridArchive_ChartGridRowColumnIdMap_default_instance_);
}

uint64_t sub_2763D7030(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry::ChartGridArchive_ChartGridRowColumnIdMap_Entry(&TSCH::_ChartGridArchive_ChartGridRowColumnIdMap_Entry_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCH::_ChartGridArchive_ChartGridRowColumnIdMap_Entry_default_instance_);
}

uint64_t sub_2763D70A0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  TSCH::ChartMediatorArchive::ChartMediatorArchive(&TSCH::_ChartMediatorArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCH::_ChartMediatorArchive_default_instance_);
}

uint64_t sub_2763D7110(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  TSCH::_ChartMultiDataIndexUpgrade_default_instance_ = &unk_2885202B8;
  unk_2812EF7D0 = 0;
  dword_2812EF7D8 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCH::_ChartMultiDataIndexUpgrade_default_instance_);
}

uint64_t sub_2763D7188(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  TSCH::_ChartPasteboardAdditionsArchive_default_instance_ = &unk_2885204C8;
  unk_2812EF860 = 0;
  dword_2812EF868 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCH::_ChartPasteboardAdditionsArchive_default_instance_);
}

uint64_t sub_2763D7200(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  TSCH::_ChartPreserveAppearanceForPresetArchive_default_instance_ = &unk_288520578;
  *algn_2812EF878 = 0;
  dword_2812EF880 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCH::_ChartPreserveAppearanceForPresetArchive_default_instance_);
}

uint64_t sub_2763D7278(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  TSCH::ChartPresetReferenceLineStylesArchive::ChartPresetReferenceLineStylesArchive(&TSCH::_ChartPresetReferenceLineStylesArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCH::_ChartPresetReferenceLineStylesArchive_default_instance_);
}

uint64_t sub_2763D72E8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  TSCH::ChartPresetsArchive::ChartPresetsArchive(&TSCH::_ChartPresetsArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCH::_ChartPresetsArchive_default_instance_);
}

uint64_t sub_2763D7358(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812EFD90 = v4;
  TSCH::_ChartReferenceLineNonStyleItem_default_instance_ = &unk_288521548;
  if (atomic_load_explicit(scc_info_ChartReferenceLineNonStyleItem_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EFDA0 = 0;
  unk_2812EFDA8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCH::_ChartReferenceLineNonStyleItem_default_instance_);
}

uint64_t sub_2763D7408(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  TSCH::ChartReferenceLinesArchive::ChartReferenceLinesArchive(&TSCH::_ChartReferenceLinesArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCH::_ChartReferenceLinesArchive_default_instance_);
}

uint64_t sub_2763D7478(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  TSCH::ChartSelectionArchive::ChartSelectionArchive(&TSCH::_ChartSelectionArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCH::_ChartSelectionArchive_default_instance_);
}

uint64_t sub_2763D74E8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  TSCH::ChartSelectionPathArchive::ChartSelectionPathArchive(&TSCH::_ChartSelectionPathArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCH::_ChartSelectionPathArchive_default_instance_);
}

uint64_t sub_2763D7558(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812EFC30 = v4;
  TSCH::_ChartSelectionPathArgumentArchive_default_instance_ = &unk_288521078;
  if (atomic_load_explicit(scc_info_ChartSelectionPathArgumentArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812EFC48 = 0;
  qword_2812EFC40 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCH::_ChartSelectionPathArgumentArchive_default_instance_);
}

uint64_t sub_2763D760C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  TSCH::ChartSelectionPathTypeArchive::ChartSelectionPathTypeArchive(&TSCH::_ChartSelectionPathTypeArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCH::_ChartSelectionPathTypeArchive_default_instance_);
}

uint64_t sub_2763D767C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  TSCH::ChartStylePreset::ChartStylePreset(&TSCH::_ChartStylePreset_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCH::_ChartStylePreset_default_instance_);
}

uint64_t sub_2763D76EC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  TSCH::_ChartSupportsProportionalBendedCalloutLinesArchive_default_instance_ = &unk_288520628;
  unk_2812EF890 = 0;
  dword_2812EF898 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCH::_ChartSupportsProportionalBendedCalloutLinesArchive_default_instance_);
}

uint64_t sub_2763D7764(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  TSCH::_ChartSupportsRoundedCornersArchive_default_instance_ = &unk_2885206D8;
  *algn_2812EF8A8 = 0;
  dword_2812EF8B0 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCH::_ChartSupportsRoundedCornersArchive_default_instance_);
}

uint64_t sub_2763D77DC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  TSCH::_ChartSupportsSeriesPropertySpacingArchive_default_instance_ = &unk_288520788;
  unk_2812EF8C0 = 0;
  dword_2812EF8C8 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCH::_ChartSupportsSeriesPropertySpacingArchive_default_instance_);
}

uint64_t sub_2763D7854(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  TSCH::_ChartSupportsStackedSummaryLabelsArchive_default_instance_ = &unk_288520838;
  *algn_2812EF8D8 = 0;
  dword_2812EF8E0 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCH::_ChartSupportsStackedSummaryLabelsArchive_default_instance_);
}

uint64_t sub_2763D78CC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  TSCH::ChartUIState::ChartUIState(&TSCH::_ChartUIState_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCH::_ChartUIState_default_instance_);
}

uint64_t sub_2763D793C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  TSCH::_ChartUIStateMultiDataIndexUpgrade_default_instance_ = &unk_2885213E8;
  unk_2812EFD60 = 0;
  dword_2812EFD68 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCH::_ChartUIStateMultiDataIndexUpgrade_default_instance_);
}

uint64_t sub_2763D79B4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  qword_2812EFF20 = 0;
  unk_2812EFF28 = 0;
  TSCH::_CollaboratorCDECursorSubselectionArchive_default_instance_ = &unk_288521A18;
  qword_2812EFF30 = 0;
  unk_2812EFF38 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCH::_CollaboratorCDECursorSubselectionArchive_default_instance_);
}

uint64_t sub_2763D7A30(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  qword_2812EFF48 = 0;
  unk_2812EFF50 = 0;
  TSCH::_CollaboratorChartTitleCursorSubselectionArchive_default_instance_ = &unk_288521AC8;
  byte_2812EFF58 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCH::_CollaboratorChartTitleCursorSubselectionArchive_default_instance_);
}

uint64_t sub_2763D7AAC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  TSCH::PropertyValueStorageContainerArchive::PropertyValueStorageContainerArchive(&TSCH::_PropertyValueStorageContainerArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCH::_PropertyValueStorageContainerArchive_default_instance_);
}

uint64_t sub_2763D7B1C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  TSCH::PropertyValueStorageContainerReferenceLinesArchive::PropertyValueStorageContainerReferenceLinesArchive(&TSCH::_PropertyValueStorageContainerReferenceLinesArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCH::_PropertyValueStorageContainerReferenceLinesArchive_default_instance_);
}

uint64_t sub_2763D7B8C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812EFBB8 = v4;
  TSCH::_StylePasteboardDataArchive_default_instance_ = &unk_288520E68;
  if (atomic_load_explicit(scc_info_StylePasteboardDataArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EFBC8 = 0;
  unk_2812EFBD0 = 0;
  byte_2812EFBD8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCH::_StylePasteboardDataArchive_default_instance_);
}

TSD::DrawableArchive *TSCH::ChartDrawableArchive::clear_super(TSCH::ChartDrawableArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSD::DrawableArchive::Clear(result);
  }

  *(this + 10) &= ~1u;
  return result;
}

TSCH::ChartDrawableArchive *TSCH::ChartDrawableArchive::ChartDrawableArchive(TSCH::ChartDrawableArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288520158;
  *(this + 1) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet((this + 16), a2);
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_ChartDrawableArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TSCH::ChartDrawableArchive *TSCH::ChartDrawableArchive::ChartDrawableArchive(TSCH::ChartDrawableArchive *this, const TSCH::ChartDrawableArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  *this = &unk_288520158;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = *(a2 + 10);
  *(this + 11) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_2763D4F88(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), (a2 + 16));
  if (*(a2 + 40))
  {
    operator new();
  }

  *(this + 6) = 0;
  return this;
}

void sub_2763D7DC4(_Unwind_Exception *a1)
{
  MEMORY[0x277C98580](v2, 0x10A1C40DF356F3CLL);
  MEMORY[0x277C97D50](v1);
  _Unwind_Resume(a1);
}

void TSCH::ChartDrawableArchive::~ChartDrawableArchive(TSCH::ChartDrawableArchive *this)
{
  if (this != &TSCH::_ChartDrawableArchive_default_instance_ && *(this + 6))
  {
    v2 = MEMORY[0x277C972D0]();
    MEMORY[0x277C98580](v2, 0x10A1C40DF356F3CLL);
  }

  sub_2763941F4(this + 1);
  MEMORY[0x277C97D50](this + 16);
}

{
  TSCH::ChartDrawableArchive::~ChartDrawableArchive(this);

  JUMPOUT(0x277C98580);
}

void *TSCH::ChartDrawableArchive::default_instance(TSCH::ChartDrawableArchive *this)
{
  if (atomic_load_explicit(scc_info_ChartDrawableArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_ChartDrawableArchive_default_instance_;
}

uint64_t *TSCH::ChartDrawableArchive::Clear(TSD::DrawableArchive **this)
{
  result = google::protobuf::internal::ExtensionSet::Clear((this + 2));
  if (this[5])
  {
    result = TSD::DrawableArchive::Clear(this[6]);
  }

  v4 = *(this + 8);
  v3 = (this + 1);
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return result;
}

google::protobuf::internal *TSCH::ChartDrawableArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v14 = a2;
  if ((sub_2763D4D98(a3, &v14) & 1) == 0)
  {
    while (1)
    {
      v5 = (v14 + 1);
      LODWORD(v6) = *v14;
      if ((*v14 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v6 = (v6 + (*v5 << 7) - 128);
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v14, v6);
      v14 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v5 = TagFallback;
LABEL_6:
      if (v6 == 10)
      {
        *(a1 + 40) |= 1u;
        v9 = *(a1 + 48);
        if (!v9)
        {
          v10 = *(a1 + 8);
          if (v10)
          {
            v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
          }

          v11 = MEMORY[0x277C97AC0](v10);
          LODWORD(v9) = v11;
          *(a1 + 48) = v11;
          v5 = v14;
        }

        v8 = sub_2764B0774(a3, v9, v5);
      }

      else
      {
        if (v6)
        {
          v7 = (v6 & 7) == 4;
        }

        else
        {
          v7 = 1;
        }

        if (v7)
        {
          *(a3 + 80) = v6 - 1;
          return v14;
        }

        if (v6 >> 7 < 0x271)
        {
          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2763D4E10((a1 + 8));
          }

          v8 = google::protobuf::internal::UnknownFieldParse();
        }

        else
        {
          v8 = google::protobuf::internal::ExtensionSet::ParseField();
        }
      }

      v14 = v8;
      if (!v8)
      {
        return 0;
      }

      if (sub_2763D4D98(a3, &v14))
      {
        return v14;
      }
    }

    v5 = (v14 + 2);
LABEL_5:
    v14 = v5;
    goto LABEL_6;
  }

  return v14;
}

uint64_t TSCH::ChartDrawableArchive::_InternalSerialize(TSCH::ChartDrawableArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  if (*(this + 40))
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 6);
    *v4 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      v4[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = v4 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        v4[2] = v9;
        v8 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v7;
      v8 = v4 + 2;
    }

    v4 = TSD::DrawableArchive::_InternalSerialize(v6, v8, a3);
  }

  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 10000, 0x20000000, v4, a3);
  v13 = *(this + 1);
  if (v13)
  {

    return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return result;
}

uint64_t TSCH::ChartDrawableArchive::ByteSizeLong(TSD::DrawableArchive **this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 2));
  if (this[5])
  {
    v3 = TSD::DrawableArchive::ByteSizeLong(this[6]);
    v2 += v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 11) = v2;
    return v2;
  }
}

uint64_t TSCH::ChartDrawableArchive::MergeFrom(TSCH::ChartDrawableArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCH::ChartDrawableArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCH::ChartDrawableArchive::MergeFrom(TSCH::ChartDrawableArchive *this, const TSCH::ChartDrawableArchive *a2)
{
  result = google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), (a2 + 16));
  v5 = *(a2 + 1);
  if (v5)
  {
    result = sub_2763D4F88(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 40))
  {
    v6 = *(a2 + 6);
    *(this + 10) |= 1u;
    v7 = *(this + 6);
    if (!v7)
    {
      v8 = *(this + 1);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = MEMORY[0x277C97AC0](v8);
      *(this + 6) = v7;
      v6 = *(a2 + 6);
    }

    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = MEMORY[0x277D804B0];
    }

    return TSD::DrawableArchive::MergeFrom(v7, v9);
  }

  return result;
}

TSD::DrawableArchive **TSCH::ChartDrawableArchive::CopyFrom(TSD::DrawableArchive **this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartDrawableArchive::Clear(this);

    return TSCH::ChartDrawableArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSD::DrawableArchive **TSCH::ChartDrawableArchive::CopyFrom(TSD::DrawableArchive **this, TSD::DrawableArchive **a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartDrawableArchive::Clear(this);

    return TSCH::ChartDrawableArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCH::ChartDrawableArchive::IsInitialized(TSCH::ChartDrawableArchive *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16));
  if (result)
  {
    if ((*(this + 40) & 1) == 0)
    {
      return 1;
    }

    result = TSD::DrawableArchive::IsInitialized(*(this + 6));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t *TSCH::ChartDrawableArchive::InternalSwap(TSCH::ChartDrawableArchive *this, TSCH::ChartDrawableArchive *a2)
{
  google::protobuf::internal::ExtensionSet::Swap((this + 16), (a2 + 16));
  result = sub_2763948BC(this + 1, a2 + 1);
  v5 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v5;
  v6 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  return result;
}

uint64_t *TSCH::ChartArchive::clear_legend_frame(TSCH::ChartArchive *this)
{
  result = *(this + 24);
  if (result)
  {
    result = sub_2763FFDD0(result);
  }

  *(this + 10) &= ~1u;
  return result;
}

TSP::Reference *TSCH::ChartArchive::clear_preset(TSCH::ChartArchive *this)
{
  result = *(this + 25);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 10) &= ~2u;
  return result;
}

TSP::Reference *TSCH::ChartArchive::clear_mediator(TSCH::ChartArchive *this)
{
  result = *(this + 27);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 10) &= ~8u;
  return result;
}

TSP::Reference *TSCH::ChartArchive::clear_chart_style(TSCH::ChartArchive *this)
{
  result = *(this + 28);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 10) &= ~0x10u;
  return result;
}

TSP::Reference *TSCH::ChartArchive::clear_chart_non_style(TSCH::ChartArchive *this)
{
  result = *(this + 29);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 10) &= ~0x20u;
  return result;
}

TSP::Reference *TSCH::ChartArchive::clear_legend_style(TSCH::ChartArchive *this)
{
  result = *(this + 30);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 10) &= ~0x40u;
  return result;
}

TSP::Reference *TSCH::ChartArchive::clear_legend_non_style(TSCH::ChartArchive *this)
{
  result = *(this + 31);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 10) &= ~0x80u;
  return result;
}

uint64_t TSCH::ChartArchive::clear_value_axis_styles(uint64_t this)
{
  v1 = *(this + 56);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 64) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 56) = 0;
  }

  return this;
}

uint64_t TSCH::ChartArchive::clear_value_axis_nonstyles(uint64_t this)
{
  v1 = *(this + 80);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 88) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 80) = 0;
  }

  return this;
}

uint64_t TSCH::ChartArchive::clear_category_axis_styles(uint64_t this)
{
  v1 = *(this + 104);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 112) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 104) = 0;
  }

  return this;
}
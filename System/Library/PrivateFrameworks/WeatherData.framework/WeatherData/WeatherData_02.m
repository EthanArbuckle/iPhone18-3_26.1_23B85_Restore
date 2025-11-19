void WK2_CurrentWeather.temperatureDewPoint.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x49u)
  {
    return;
  }

  v3 = __OFADD__(v2, 72);
  v4 = v2 + 72;
  if (v3)
  {
    goto LABEL_9;
  }

  v5 = *(v0 + v4);
  if (!v5)
  {
    return;
  }

  v3 = __OFADD__(v5, v1);
  v6 = v5 + v1;
  if (v3)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = *(v0 + v6);
}

void WK2_CurrentWeather.visibility.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x4Du)
  {
    return;
  }

  v3 = __OFADD__(v2, 76);
  v4 = v2 + 76;
  if (v3)
  {
    goto LABEL_9;
  }

  v5 = *(v0 + v4);
  if (!v5)
  {
    return;
  }

  v3 = __OFADD__(v5, v1);
  v6 = v5 + v1;
  if (v3)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = *(v0 + v6);
}

void WK2_CurrentWeather.windGust.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x51u)
  {
    return;
  }

  v3 = __OFADD__(v2, 80);
  v4 = v2 + 80;
  if (v3)
  {
    goto LABEL_9;
  }

  v5 = *(v0 + v4);
  if (!v5)
  {
    return;
  }

  v3 = __OFADD__(v5, v1);
  v6 = v5 + v1;
  if (v3)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = *(v0 + v6);
}

void WK2_CurrentWeather.windSpeed.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x53u)
  {
    return;
  }

  v3 = __OFADD__(v2, 82);
  v4 = v2 + 82;
  if (v3)
  {
    goto LABEL_9;
  }

  v5 = *(v0 + v4);
  if (!v5)
  {
    return;
  }

  v3 = __OFADD__(v5, v1);
  v6 = v5 + v1;
  if (v3)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = *(v0 + v6);
}

uint64_t WK2_DayWeatherConditions.overnightForecast.getter()
{
  result = OUTLINED_FUNCTION_280();
  if (v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v3 + v5) < 0x49u)
  {
    v8 = 0;
LABEL_6:
    v6 = __OFADD__(v8, v4);
    v9 = v8 + v4;
    if (!v6)
    {
      if (!__OFADD__(v9, *(v3 + v9)))
      {
        return OUTLINED_FUNCTION_56(result, v2, *(v0 + 8));
      }

      goto LABEL_11;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = __OFADD__(v5, 72);
  v7 = v5 + 72;
  if (!v6)
  {
    v8 = *(v3 + v7);
    goto LABEL_6;
  }

LABEL_12:
  __break(1u);
  return result;
}

void WK2_DayPartForecast.daylight.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 0x3Fu)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 62);
    v4 = v2 + 62;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        if (!__OFADD__(v5, v1))
        {
          OUTLINED_FUNCTION_102(v0);
          return;
        }

        goto LABEL_10;
      }

LABEL_7:
      OUTLINED_FUNCTION_32_0();
      return;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

void WK2_DayWeatherConditions.sunsetAstronomical.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x33u)
  {
    goto LABEL_7;
  }

  v3 = __OFADD__(v2, 50);
  v4 = v2 + 50;
  if (v3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v0 + v4);
  if (v5)
  {
    v3 = __OFADD__(v5, v1);
    v6 = v5 + v1;
    if (!v3)
    {
      OUTLINED_FUNCTION_16(*(v0 + v6));
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_16(0);
}

void WK2_DayPartForecast.windSpeed.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x2Fu)
  {
    return;
  }

  v3 = __OFADD__(v2, 46);
  v4 = v2 + 46;
  if (v3)
  {
    goto LABEL_9;
  }

  v5 = *(v0 + v4);
  if (!v5)
  {
    return;
  }

  v3 = __OFADD__(v5, v1);
  v6 = v5 + v1;
  if (v3)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = *(v0 + v6);
}

void OUTLINED_FUNCTION_15_2()
{
  v3 = *(v0 + 24);

  ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v1, v3);
}

void WK2_DayWeatherConditions.moonset.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x15u)
  {
    goto LABEL_7;
  }

  v3 = __OFADD__(v2, 20);
  v4 = v2 + 20;
  if (v3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v0 + v4);
  if (v5)
  {
    v3 = __OFADD__(v5, v1);
    v6 = v5 + v1;
    if (!v3)
    {
      OUTLINED_FUNCTION_16(*(v0 + v6));
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_16(0);
}

void WK2_DayWeatherConditions.solarNoon.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x23u)
  {
    goto LABEL_7;
  }

  v3 = __OFADD__(v2, 34);
  v4 = v2 + 34;
  if (v3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v0 + v4);
  if (v5)
  {
    v3 = __OFADD__(v5, v1);
    v6 = v5 + v1;
    if (!v3)
    {
      OUTLINED_FUNCTION_16(*(v0 + v6));
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_16(0);
}

void WK2_DayWeatherConditions.solarMidnight.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x21u)
  {
    goto LABEL_7;
  }

  v3 = __OFADD__(v2, 32);
  v4 = v2 + 32;
  if (v3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v0 + v4);
  if (v5)
  {
    v3 = __OFADD__(v5, v1);
    v6 = v5 + v1;
    if (!v3)
    {
      OUTLINED_FUNCTION_16(*(v0 + v6));
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_16(0);
}

void WK2_HourWeatherConditions.perceivedPrecipitationIntensity.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x15u)
  {
    return;
  }

  v3 = __OFADD__(v2, 20);
  v4 = v2 + 20;
  if (v3)
  {
    goto LABEL_9;
  }

  v5 = *(v0 + v4);
  if (!v5)
  {
    return;
  }

  v3 = __OFADD__(v5, v1);
  v6 = v5 + v1;
  if (v3)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = *(v0 + v6);
}

void WK2_DayWeatherConditions.sunsetNautical.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x31u)
  {
    goto LABEL_7;
  }

  v3 = __OFADD__(v2, 48);
  v4 = v2 + 48;
  if (v3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v0 + v4);
  if (v5)
  {
    v3 = __OFADD__(v5, v1);
    v6 = v5 + v1;
    if (!v3)
    {
      OUTLINED_FUNCTION_16(*(v0 + v6));
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_16(0);
}

void _s11WeatherData04WK2_A0V16forecastNextHourAA0c1_eF8ForecastVSgvg_0()
{
  OUTLINED_FUNCTION_14();
  if (v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_132(v0);
  if (v5 < 0xD)
  {
LABEL_8:
    v8 = OUTLINED_FUNCTION_107();
    goto LABEL_9;
  }

  v1 = __OFADD__(v4, 12);
  v6 = v4 + 12;
  if (v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    goto LABEL_8;
  }

  if (__OFADD__(v7, v3))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_108(v2);
  if (!v1)
  {
    v8 = OUTLINED_FUNCTION_183();
    v9 = v10;
LABEL_9:
    OUTLINED_FUNCTION_51(v8, v9);
    return;
  }

LABEL_13:
  __break(1u);
}

void WK2_Weather.weatherChanges.getter()
{
  OUTLINED_FUNCTION_14();
  if (v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_132(v0);
  if (v5 < 0x13)
  {
LABEL_8:
    v8 = OUTLINED_FUNCTION_107();
    goto LABEL_9;
  }

  v1 = __OFADD__(v4, 18);
  v6 = v4 + 18;
  if (v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    goto LABEL_8;
  }

  if (__OFADD__(v7, v3))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_108(v2);
  if (!v1)
  {
    v8 = OUTLINED_FUNCTION_183();
    v9 = v10;
LABEL_9:
    OUTLINED_FUNCTION_51(v8, v9);
    return;
  }

LABEL_13:
  __break(1u);
}

void _s11WeatherData20WK2_NextHourForecastV7minutes2atAA0c1_F6MinuteVSgs5Int32V_tF_0()
{
  OUTLINED_FUNCTION_10();
  if (v1)
  {
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_137(v0);
  if (v5 < 0xF)
  {
LABEL_13:
    v13 = OUTLINED_FUNCTION_107();
    goto LABEL_14;
  }

  v1 = __OFADD__(v4, 14);
  v6 = v4 + 14;
  if (v1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    goto LABEL_13;
  }

  if (__OFADD__(v7, v3))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_136(v2);
  if (v1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (__OFADD__(v8, 4))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_36_0();
  if (!v12)
  {
    goto LABEL_20;
  }

  if (__OFADD__(v11, 4 * v10))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_108(v9);
  if (!v1)
  {
    v13 = OUTLINED_FUNCTION_183();
    v14 = v15;
LABEL_14:
    OUTLINED_FUNCTION_51(v13, v14);
    return;
  }

LABEL_22:
  __break(1u);
}

void _s11WeatherData21WK2_ForecastConditionV7endTimes6UInt32VSgvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 7u)
  {
    goto LABEL_7;
  }

  v3 = __OFADD__(v2, 6);
  v4 = v2 + 6;
  if (v3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v0 + v4);
  if (v5)
  {
    v3 = __OFADD__(v5, v1);
    v6 = v5 + v1;
    if (!v3)
    {
      OUTLINED_FUNCTION_16(*(v0 + v6));
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_16(0);
}

void _s11WeatherData04WK2_A0V13weatherAlertsAA0c1_A15AlertCollectionVSgvg_0()
{
  OUTLINED_FUNCTION_14();
  if (v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_132(v0);
  if (v5 < 0x11)
  {
LABEL_8:
    v8 = OUTLINED_FUNCTION_107();
    goto LABEL_9;
  }

  v1 = __OFADD__(v4, 16);
  v6 = v4 + 16;
  if (v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    goto LABEL_8;
  }

  if (__OFADD__(v7, v3))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_108(v2);
  if (!v1)
  {
    v8 = OUTLINED_FUNCTION_183();
    v9 = v10;
LABEL_9:
    OUTLINED_FUNCTION_51(v8, v9);
    return;
  }

LABEL_13:
  __break(1u);
}

void WK2_Weather.historicalComparisons.getter()
{
  OUTLINED_FUNCTION_14();
  if (v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_132(v0);
  if (v5 < 0x15)
  {
LABEL_8:
    v8 = OUTLINED_FUNCTION_107();
    goto LABEL_9;
  }

  v1 = __OFADD__(v4, 20);
  v6 = v4 + 20;
  if (v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    goto LABEL_8;
  }

  if (__OFADD__(v7, v3))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_108(v2);
  if (!v1)
  {
    v8 = OUTLINED_FUNCTION_183();
    v9 = v10;
LABEL_9:
    OUTLINED_FUNCTION_51(v8, v9);
    return;
  }

LABEL_13:
  __break(1u);
}

void _s11WeatherData04WK2_A7ChangesV12changesCounts5Int32Vvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0xBu)
  {
LABEL_8:
    OUTLINED_FUNCTION_32_0();
    return;
  }

  v3 = __OFADD__(v2, 10);
  v4 = v2 + 10;
  if (v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = *(v0 + v4);
  if (!v5)
  {
    goto LABEL_8;
  }

  v3 = __OFADD__(v5, v1);
  v6 = v5 + v1;
  if (!v3)
  {
    if (!__OFADD__(v6, *(v0 + v6)))
    {
      OUTLINED_FUNCTION_112(v0);
      return;
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
}

void _s11WeatherData20WK2_NextHourForecastV12minutesCounts5Int32Vvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0xFu)
  {
LABEL_8:
    OUTLINED_FUNCTION_32_0();
    return;
  }

  v3 = __OFADD__(v2, 14);
  v4 = v2 + 14;
  if (v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = *(v0 + v4);
  if (!v5)
  {
    goto LABEL_8;
  }

  v3 = __OFADD__(v5, v1);
  v6 = v5 + v1;
  if (!v3)
  {
    if (!__OFADD__(v6, *(v0 + v6)))
    {
      OUTLINED_FUNCTION_112(v0);
      return;
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
}

void WK2_NextHourForecast.forecastStart.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0xBu)
  {
    goto LABEL_7;
  }

  v3 = __OFADD__(v2, 10);
  v4 = v2 + 10;
  if (v3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v0 + v4);
  if (v5)
  {
    v3 = __OFADD__(v5, v1);
    v6 = v5 + v1;
    if (!v3)
    {
      OUTLINED_FUNCTION_16(*(v0 + v6));
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_16(0);
}

void WK2_WeatherChanges.forecastEnd.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 9u)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 8);
    v4 = v2 + 8;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        if (!__OFADD__(v5, v1))
        {
          OUTLINED_FUNCTION_112(v0);
          return;
        }

        goto LABEL_10;
      }

LABEL_7:
      OUTLINED_FUNCTION_32_0();
      return;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

void WK2_ForecastCondition.forecastToken.getter()
{
  OUTLINED_FUNCTION_13_0();
  if (v4)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*(v1 + v3) < 9u)
  {
LABEL_9:
    v8 = 0;
LABEL_10:
    *v0 = v8;
    return;
  }

  v4 = __OFADD__(v3, 8);
  v5 = v3 + 8;
  if (v4)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = *(v1 + v5);
  if (!v6)
  {
    goto LABEL_9;
  }

  if (!__OFADD__(v6, v2))
  {
    v7 = OUTLINED_FUNCTION_124(v1);
    WK2_ForecastToken.init(rawValue:)(v7);
    v8 = v9;
    if (v9 == 6)
    {
      v8 = 0;
    }

    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
}

void WK2_ForecastCondition.beginCondition.getter()
{
  OUTLINED_FUNCTION_13_0();
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + v3) < 0xBu)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v4 = __OFADD__(v3, 10);
  v5 = v3 + 10;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = *(v1 + v5);
  if (!v6)
  {
    goto LABEL_7;
  }

  if (!__OFADD__(v6, v2))
  {
    v7 = OUTLINED_FUNCTION_124(v1);
    WK2_PollutantType.init(rawValue:)(v7);
    OUTLINED_FUNCTION_163();
LABEL_8:
    *v0 = v8;
    return;
  }

LABEL_11:
  __break(1u);
}

void WK2_ForecastCondition.endCondition.getter()
{
  OUTLINED_FUNCTION_13_0();
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + v3) < 0xDu)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v4 = __OFADD__(v3, 12);
  v5 = v3 + 12;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = *(v1 + v5);
  if (!v6)
  {
    goto LABEL_7;
  }

  if (!__OFADD__(v6, v2))
  {
    v7 = OUTLINED_FUNCTION_124(v1);
    WK2_PollutantType.init(rawValue:)(v7);
    OUTLINED_FUNCTION_163();
LABEL_8:
    *v0 = v8;
    return;
  }

LABEL_11:
  __break(1u);
}

void WK2_Weather.tideEvents.getter()
{
  OUTLINED_FUNCTION_14();
  if (v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_132(v0);
  if (v5 < 0x1B)
  {
LABEL_8:
    v8 = OUTLINED_FUNCTION_107();
    goto LABEL_9;
  }

  v1 = __OFADD__(v4, 26);
  v6 = v4 + 26;
  if (v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    goto LABEL_8;
  }

  if (__OFADD__(v7, v3))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_108(v2);
  if (!v1)
  {
    v8 = OUTLINED_FUNCTION_183();
    v9 = v10;
LABEL_9:
    OUTLINED_FUNCTION_51(v8, v9);
    return;
  }

LABEL_13:
  __break(1u);
}

void _s11WeatherData11WK2_ArticleV13alertIdsCounts5Int32Vvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 9u)
  {
LABEL_8:
    OUTLINED_FUNCTION_32_0();
    return;
  }

  v3 = __OFADD__(v2, 8);
  v4 = v2 + 8;
  if (v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = *(v0 + v4);
  if (!v5)
  {
    goto LABEL_8;
  }

  v3 = __OFADD__(v5, v1);
  v6 = v5 + v1;
  if (!v3)
  {
    if (!__OFADD__(v6, *(v0 + v6)))
    {
      OUTLINED_FUNCTION_112(v0);
      return;
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
}

void WK2_Weather.news.getter()
{
  OUTLINED_FUNCTION_14();
  if (v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_132(v0);
  if (v5 < 0xF)
  {
LABEL_8:
    v8 = OUTLINED_FUNCTION_107();
    goto LABEL_9;
  }

  v1 = __OFADD__(v4, 14);
  v6 = v4 + 14;
  if (v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    goto LABEL_8;
  }

  if (__OFADD__(v7, v3))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_108(v2);
  if (!v1)
  {
    v8 = OUTLINED_FUNCTION_183();
    v9 = v10;
LABEL_9:
    OUTLINED_FUNCTION_51(v8, v9);
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t WK2_WeatherAlertCollection.alertsCount.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v5) < 9u)
  {
    return 0;
  }

  v4 = __OFADD__(v5, 8);
  v6 = v5 + 8;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    return 0;
  }

  v4 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v4)
  {
    v9 = *(v2 + v8);
    v4 = __OFADD__(v8, v9);
    v10 = v8 + v9;
    if (!v4)
    {
      return *(v2 + v10);
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void WK2_Weather.marineForecast.getter()
{
  OUTLINED_FUNCTION_14();
  if (v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_132(v0);
  if (v5 < 0x19)
  {
LABEL_8:
    v8 = OUTLINED_FUNCTION_107();
    goto LABEL_9;
  }

  v1 = __OFADD__(v4, 24);
  v6 = v4 + 24;
  if (v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    goto LABEL_8;
  }

  if (__OFADD__(v7, v3))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_108(v2);
  if (!v1)
  {
    v8 = OUTLINED_FUNCTION_183();
    v9 = v10;
LABEL_9:
    OUTLINED_FUNCTION_51(v8, v9);
    return;
  }

LABEL_13:
  __break(1u);
}

void WK2_WeatherAlertSummary.areaName.getter()
{
  OUTLINED_FUNCTION_65();
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v3) < 9u)
  {
    goto LABEL_7;
  }

  v4 = __OFADD__(v3, 8);
  v5 = v3 + 8;
  if (v4)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v6 = *(v2 + v5);
  if (v6)
  {
    if (!__OFADD__(v6, v1))
    {
      v7 = *(v0 + 8);
      v8 = *(v0 + 16);
      Table.directString(at:)(v6 + v1);
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_169();
}

void WK2_LocationInfo.countryCode.getter()
{
  OUTLINED_FUNCTION_65();
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v3) < 9u)
  {
    goto LABEL_7;
  }

  v4 = __OFADD__(v3, 8);
  v5 = v3 + 8;
  if (v4)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v6 = *(v2 + v5);
  if (v6)
  {
    if (!__OFADD__(v6, v1))
    {
      v7 = *(v0 + 8);
      v8 = *(v0 + 16);
      Table.directString(at:)(v6 + v1);
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_169();
}

void WK2_NextHourForecast.forecastEnd.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0xDu)
  {
    goto LABEL_7;
  }

  v3 = __OFADD__(v2, 12);
  v4 = v2 + 12;
  if (v3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v0 + v4);
  if (v5)
  {
    v3 = __OFADD__(v5, v1);
    v6 = v5 + v1;
    if (!v3)
    {
      OUTLINED_FUNCTION_16(*(v0 + v6));
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_16(0);
}

void WK2_LocationInfo.preciseName.getter()
{
  OUTLINED_FUNCTION_65();
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v3) < 7u)
  {
    goto LABEL_7;
  }

  v4 = __OFADD__(v3, 6);
  v5 = v3 + 6;
  if (v4)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v6 = *(v2 + v5);
  if (v6)
  {
    if (!__OFADD__(v6, v1))
    {
      v7 = *(v0 + 8);
      v8 = *(v0 + 16);
      Table.directString(at:)(v6 + v1);
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_169();
}

void WK2_LocationInfo.secondaryName.getter()
{
  OUTLINED_FUNCTION_65();
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v3) < 0xFu)
  {
    goto LABEL_7;
  }

  v4 = __OFADD__(v3, 14);
  v5 = v3 + 14;
  if (v4)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v6 = *(v2 + v5);
  if (v6)
  {
    if (!__OFADD__(v6, v1))
    {
      v7 = *(v0 + 8);
      v8 = *(v0 + 16);
      Table.directString(at:)(v6 + v1);
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_169();
}

void WK2_LocationInfo.primaryName.getter()
{
  OUTLINED_FUNCTION_65();
  if (v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(v0 + 8);
  v6 = *(v0 + 16);
  if (*(v2 + v3) < 0xDu)
  {
    v8 = 0;
LABEL_6:
    if (!__OFADD__(v8, v1))
    {
      Table.directString(at:)(v8 + v1);
      return;
    }

    goto LABEL_9;
  }

  v4 = __OFADD__(v3, 12);
  v7 = v3 + 12;
  if (!v4)
  {
    v8 = *(v2 + v7);
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
}

void _s11WeatherData18WK2_ForecastMinuteV22precipitationIntensitySfvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 9u)
  {
    return;
  }

  v3 = __OFADD__(v2, 8);
  v4 = v2 + 8;
  if (v3)
  {
    goto LABEL_9;
  }

  v5 = *(v0 + v4);
  if (!v5)
  {
    return;
  }

  v3 = __OFADD__(v5, v1);
  v6 = v5 + v1;
  if (v3)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = *(v0 + v6);
}

void WK2_Weather.locationInfo.getter()
{
  OUTLINED_FUNCTION_14();
  if (v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_132(v0);
  if (v5 < 0x17)
  {
LABEL_8:
    v8 = OUTLINED_FUNCTION_107();
    goto LABEL_9;
  }

  v1 = __OFADD__(v4, 22);
  v6 = v4 + 22;
  if (v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    goto LABEL_8;
  }

  if (__OFADD__(v7, v3))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_108(v2);
  if (!v1)
  {
    v8 = OUTLINED_FUNCTION_183();
    v9 = v10;
LABEL_9:
    OUTLINED_FUNCTION_51(v8, v9);
    return;
  }

LABEL_13:
  __break(1u);
}

void WK2_Weather.forecastPeriodic.getter()
{
  OUTLINED_FUNCTION_14();
  if (v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_132(v0);
  if (v5 < 0x1D)
  {
LABEL_8:
    v8 = OUTLINED_FUNCTION_107();
    goto LABEL_9;
  }

  v1 = __OFADD__(v4, 28);
  v6 = v4 + 28;
  if (v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    goto LABEL_8;
  }

  if (__OFADD__(v7, v3))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_108(v2);
  if (!v1)
  {
    v8 = OUTLINED_FUNCTION_183();
    v9 = v10;
LABEL_9:
    OUTLINED_FUNCTION_51(v8, v9);
    return;
  }

LABEL_13:
  __break(1u);
}

void _s11WeatherData18WK2_ForecastMinuteV31perceivedPrecipitationIntensitySfvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0xBu)
  {
    return;
  }

  v3 = __OFADD__(v2, 10);
  v4 = v2 + 10;
  if (v3)
  {
    goto LABEL_9;
  }

  v5 = *(v0 + v4);
  if (!v5)
  {
    return;
  }

  v3 = __OFADD__(v5, v1);
  v6 = v5 + v1;
  if (v3)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = *(v0 + v6);
}

void WK2_LocationInfo.timeZone.getter()
{
  OUTLINED_FUNCTION_65();
  if (v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(v0 + 8);
  v6 = *(v0 + 16);
  if (*(v2 + v3) < 0xBu)
  {
    v8 = 0;
LABEL_6:
    if (!__OFADD__(v8, v1))
    {
      Table.directString(at:)(v8 + v1);
      return;
    }

    goto LABEL_9;
  }

  v4 = __OFADD__(v3, 10);
  v7 = v3 + 10;
  if (!v4)
  {
    v8 = *(v2 + v7);
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
}

unint64_t sub_272B5C86C()
{
  result = qword_2808A3168;
  if (!qword_2808A3168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3168);
  }

  return result;
}

uint64_t sub_272B5C8C0@<X0>(_BYTE *a1@<X8>)
{
  result = WK2_Deviation.value.getter();
  *a1 = result;
  return result;
}

uint64_t sub_272B5C904@<X0>(_BYTE *a1@<X8>)
{
  result = WK2_PollutantUnit.value.getter();
  *a1 = result;
  return result;
}

uint64_t sub_272B5CBDC@<X0>(_BYTE *a1@<X8>)
{
  result = WK2_WeatherCondition.value.getter();
  *a1 = result;
  return result;
}

uint64_t sub_272B5CC0C@<X0>(_BYTE *a1@<X8>)
{
  result = WK2_DistanceUnits.value.getter();
  *a1 = result;
  return result;
}

uint64_t sub_272B5CD00@<X0>(_BYTE *a1@<X8>)
{
  result = WK2_SourceType.value.getter();
  *a1 = result;
  return result;
}

uint64_t sub_272B5CE38@<X0>(_BYTE *a1@<X8>)
{
  result = WK2_AlertUrgency.value.getter();
  *a1 = result;
  return result;
}

WeatherData::WK2_ForecastToken_optional __swiftcall WK2_ForecastToken.init(rawValue:)(Swift::UInt8 rawValue)
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_89(v1);
  return result;
}

WeatherData::WK2_TimeOfDay_optional __swiftcall WK2_TimeOfDay.init(rawValue:)(Swift::UInt8 rawValue)
{
  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_89(v1);
  return result;
}

void static WK2_Weather.add(weatherAlerts:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  sub_272B68E24();
}

void static WK2_Weather.add(historicalComparisons:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = *MEMORY[0x277D85DE8];
  v5 = OUTLINED_FUNCTION_120(v4);
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58(v5, v6);
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_38();
  }

  v10 = *(v0 + 16);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v10))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = OUTLINED_FUNCTION_3(v7, v10);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v12, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v13)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v14)
  {
    OUTLINED_FUNCTION_79();
    if (!v14)
    {
LABEL_28:
      v25 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v15 = OUTLINED_FUNCTION_15();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_186(v15);
  }

  OUTLINED_FUNCTION_27();
  if (v8 != v9)
  {
    v17 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v17, v2, v18);
    v16 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v16);
  if (!v14 & v19)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v21 & 1) == 0)
  {
    if (*(v20 + 32))
    {
      OUTLINED_FUNCTION_57(v20);
      OUTLINED_FUNCTION_260();
    }

    OUTLINED_FUNCTION_33(v20, *(v20 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_256();
    if (!(!v14 & v19))
    {
      v23 = v24;
    }

    *(v22 + 64) = v23;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_Weather.add(forecastPeriodic:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = *MEMORY[0x277D85DE8];
  v5 = OUTLINED_FUNCTION_120(v4);
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58(v5, v6);
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_38();
  }

  v10 = *(v0 + 16);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v10))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = OUTLINED_FUNCTION_3(v7, v10);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v12, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v13)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v14)
  {
    OUTLINED_FUNCTION_79();
    if (!v14)
    {
LABEL_28:
      v25 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v15 = OUTLINED_FUNCTION_15();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_186(v15);
  }

  OUTLINED_FUNCTION_27();
  if (v8 != v9)
  {
    v17 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v17, v2, v18);
    v16 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v16);
  if (!v14 & v19)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v21 & 1) == 0)
  {
    if (*(v20 + 32))
    {
      OUTLINED_FUNCTION_57(v20);
      OUTLINED_FUNCTION_254();
    }

    OUTLINED_FUNCTION_33(v20, *(v20 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_252();
    if (!(!v14 & v19))
    {
      v23 = v24;
    }

    *(v22 + 64) = v23;
    goto LABEL_28;
  }

  __break(1u);
}

uint64_t static WK2_Weather.createWeather(_:airQualityOffset:currentWeatherOffset:forecastDailyOffset:forecastHourlyOffset:forecastNextHourOffset:newsOffset:weatherAlertsOffset:weatherChangesOffset:historicalComparisonsOffset:locationInfoOffset:marineForecastOffset:tideEventsOffset:forecastPeriodicOffset:)@<X0>(_BYTE *a1@<X0>, int *a2@<X1>, int *a3@<X2>, int *a4@<X3>, int *a5@<X4>, int *a6@<X5>, int *a7@<X6>, int *a8@<X7>, uint64_t a9@<X8>, int *a10, int *a11, _DWORD *a12, _DWORD *a13, _DWORD *a14, _DWORD *a15)
{
  v15 = *a2;
  v16 = *a3;
  v17 = *a4;
  v18 = *a5;
  v19 = *a6;
  v20 = *a7;
  v21 = *a8;
  v22 = *a10;
  v23 = *a11;
  HIDWORD(v142) = *a12;
  LODWORD(v155) = *a13;
  HIDWORD(v155) = *a14;
  LODWORD(v168) = *a15;
  static WK2_Weather.startWeather(_:)(a1);
  HIDWORD(v168) = v24;
  OUTLINED_FUNCTION_135(v24, v25, v26, v27, v28, v29, v30, v31, v129, v142, v155, v168, a9, v196, v15);
  static WK2_CurrentWeather.add(metadata:_:)();
  OUTLINED_FUNCTION_135(v32, v33, v34, v35, v36, v37, v38, v39, v130, v143, v156, v169, v183, v197, v16);
  static WK2_Weather.add(currentWeather:_:)();
  OUTLINED_FUNCTION_135(v40, v41, v42, v43, v44, v45, v46, v47, v131, v144, v157, v170, v184, v198, v17);
  static WK2_Weather.add(forecastDaily:_:)();
  OUTLINED_FUNCTION_135(v48, v49, v50, v51, v52, v53, v54, v55, v132, v145, v158, v171, v185, v199, v18);
  static WK2_Weather.add(forecastHourly:_:)();
  OUTLINED_FUNCTION_135(v56, v57, v58, v59, v60, v61, v62, v63, v133, v146, v159, v172, v186, v200, v19);
  static WK2_Weather.add(forecastNextHour:_:)();
  OUTLINED_FUNCTION_135(v64, v65, v66, v67, v68, v69, v70, v71, v134, v147, v160, v173, v187, v201, v20);
  static WK2_Weather.add(news:_:)();
  OUTLINED_FUNCTION_135(v72, v73, v74, v75, v76, v77, v78, v79, v135, v148, v161, v174, v188, v202, v21);
  static WK2_Weather.add(weatherAlerts:_:)();
  OUTLINED_FUNCTION_135(v80, v81, v82, v83, v84, v85, v86, v87, v136, v149, v162, v175, v189, v203, v22);
  static WK2_Weather.add(weatherChanges:_:)();
  OUTLINED_FUNCTION_135(v88, v89, v90, v91, v92, v93, v94, v95, v137, v150, v163, v176, v190, v204, v23);
  static WK2_Weather.add(historicalComparisons:_:)();
  OUTLINED_FUNCTION_135(v96, v97, v98, v99, v100, v101, v102, v103, v138, v151, v164, v177, v191, v205, SBYTE4(v151));
  static WK2_Weather.add(locationInfo:_:)();
  OUTLINED_FUNCTION_135(v104, v105, v106, v107, v108, v109, v110, v111, v139, v152, v165, v178, v192, v206, v165);
  static WK2_Weather.add(marineForecast:_:)();
  OUTLINED_FUNCTION_135(v112, v113, v114, v115, v116, v117, v118, v119, v140, v153, v166, v179, v193, v207, SBYTE4(v166));
  static WK2_Weather.add(tideEvents:_:)();
  OUTLINED_FUNCTION_135(v120, v121, v122, v123, v124, v125, v126, v127, v141, v154, v167, v180, v194, v208, v180);
  static WK2_Weather.add(forecastPeriodic:_:)();
  result = FlatBufferBuilder.endTable(at:)(at);
  *v195 = result;
  return result;
}

void sub_272B5D54C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  OUTLINED_FUNCTION_129();
  if (!(v12 ^ v13 | v11))
  {
    OUTLINED_FUNCTION_217();
    if (v11)
    {
      OUTLINED_FUNCTION_273();
      if ((v14 + v8))
      {
        *&v38 = MEMORY[0x277D84C58];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3160, &unk_272B87CC0);
        OUTLINED_FUNCTION_195();
        OUTLINED_FUNCTION_204();
        v27 = OUTLINED_FUNCTION_177();
        OUTLINED_FUNCTION_126(v27, v28);
        OUTLINED_FUNCTION_11(v29, v30, v31, v32, v33, v34, v35, v36, v38, v37, v39);
        swift_willThrow();
        return;
      }
    }

    OUTLINED_FUNCTION_173(v8);
    if (v4)
    {
      return;
    }

    if (*(*(*(v9 + 64) + 24) + v8))
    {
      sub_272B6A048((v9 + 24), *v9 + *(*(*(v9 + 64) + 24) + v8));
      return;
    }
  }

  if (a4)
  {
    sub_272B5C86C();
    OUTLINED_FUNCTION_177();
    *v15 = v7;
    OUTLINED_FUNCTION_180(v15, v40);
    *(v16 + 8) = v6;
    *(v16 + 16) = v5;
    OUTLINED_FUNCTION_17(v17, v16, v18, v19, v20, v21, v22, v23, v38, v24, v39);
    OUTLINED_FUNCTION_157(v25, v26);
  }
}

void sub_272B5DA24()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_247();
  sub_272B5DACC(v0, v1, v2, v3, v4, 0xEA00000000007374, v5, v6);
}

void sub_272B5DA98()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_187();
  sub_272B5DACC(v0, v1, v2, v3, v4, v5, v6, v7);
}

void sub_272B5DACC(unsigned __int16 a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t))
{
  if (v8[2] > a1)
  {
    v14 = v8[1] + a1;
    v15 = *(v8 + 24);
    if (v15 == 1)
    {
      OUTLINED_FUNCTION_273();
      if ((v16 + v14))
      {
        v30.n128_u64[0] = MEMORY[0x277D84C58];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3160, &unk_272B87CC0);
        sub_272B87730();
        OUTLINED_FUNCTION_204();
        v26 = OUTLINED_FUNCTION_177();
        OUTLINED_FUNCTION_224(v26, v27);
LABEL_14:
        OUTLINED_FUNCTION_21(v23, v32, v31, v30);
        swift_willThrow();
        return;
      }
    }

    v29 = a8;
    OUTLINED_FUNCTION_173(v14);
    if (v9)
    {
      return;
    }

    if (*(*(v8[8] + 24) + v14))
    {
      v17 = *v8;
      OUTLINED_FUNCTION_49();
      if (v19)
      {
        v20 = 0;
      }

      else
      {
        v20 = v15;
      }

      if (v20 != 1)
      {
        v28 = v18;
        OUTLINED_FUNCTION_90();
        OUTLINED_FUNCTION_59(*(v28 + 24));
        v29((v8 + 3));
        return;
      }

      v30.n128_u64[0] = MEMORY[0x277D84CC0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3170, &unk_272B89910);
      sub_272B87730();
      OUTLINED_FUNCTION_185();
      v21 = OUTLINED_FUNCTION_177();
      OUTLINED_FUNCTION_54(v21, v22);
      goto LABEL_14;
    }
  }

  if (a4)
  {
    sub_272B5C86C();
    OUTLINED_FUNCTION_177();
    *v24 = a1;
    OUTLINED_FUNCTION_180(v24, v33);
    *(v25 + 8) = a2;
    *(v25 + 16) = a3;
    OUTLINED_FUNCTION_37(v25, v32, v31, v30);
    swift_willThrow();
  }
}

void WK2_AirQuality.hasPollutants.getter()
{
  OUTLINED_FUNCTION_181();
  if (v2)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v1) < 0xDu)
    {
      OUTLINED_FUNCTION_32_0();
      return;
    }

    v2 = __OFADD__(v1, 12);
    v3 = v1 + 12;
    if (!v2)
    {
      v4 = *(v0 + v3) != 0;
      return;
    }
  }

  __break(1u);
}

void *sub_272B5DE20(void *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *(a2 + 24);
  v6 = *(v5 + a5);
  v7 = __OFSUB__(a5, v6);
  v8 = a5 - v6;
  if (v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(v5 + v8) <= result)
  {
    return 0;
  }

  v7 = __OFADD__(v8, result);
  v9 = v8 + result;
  if (v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = *(v5 + v9);
  if (!v10)
  {
    return 0;
  }

  v7 = __OFADD__(v10, a5);
  v11 = v10 + a5;
  if (v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = *(v5 + v11);
  v7 = __OFADD__(v11, v12);
  v13 = v11 + v12;
  if (!v7)
  {
    if (!__OFADD__(v13, 4))
    {
      return sub_272B51468((v5 + v13 + 4), *(v5 + v13));
    }

    goto LABEL_14;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t static WK2_AirQuality.createAirQuality(_:metadataOffset:categoryIndex:index:isSignificant:pollutantsVectorOffset:previousDayComparison:primaryPollutant:scaleOffset:)@<X0>(_BYTE *a1@<X0>, int *a2@<X1>, int *a3@<X5>, char *a4@<X6>, char *a5@<X7>, _DWORD *a6@<X8>, int *a7)
{
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = *a7;
  static WK2_AirQuality.startAirQuality(_:)(a1);
  v13 = v12;
  static WK2_CurrentWeather.add(metadata:_:)();
  static WK2_HourWeatherConditions.add(cloudCover:_:)();
  static WK2_AirQuality.add(index:_:)();
  OUTLINED_FUNCTION_249();
  static WK2_AirQuality.add(isSignificant:_:)();
  static WK2_Weather.add(forecastNextHour:_:)();
  static WK2_HourWeatherConditions.add(conditionCode:_:)();
  static WK2_CurrentWeather.add(conditionCode:_:)();
  static WK2_Weather.add(weatherChanges:_:)();
  result = FlatBufferBuilder.endTable(at:)(v13);
  *a6 = result;
  return result;
}

void WK2_CurrentWeather.hasPrecipitationAmountNext1hByType.getter()
{
  OUTLINED_FUNCTION_181();
  if (v2)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v1) < 0x25u)
    {
      OUTLINED_FUNCTION_32_0();
      return;
    }

    v2 = __OFADD__(v1, 36);
    v3 = v1 + 36;
    if (!v2)
    {
      v4 = *(v0 + v3) != 0;
      return;
    }
  }

  __break(1u);
}

void WK2_CurrentWeather.precipitationAmountNext1hByType(at:)()
{
  OUTLINED_FUNCTION_10();
  if (v1)
  {
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_137(v0);
  if (v5 < 0x25)
  {
LABEL_13:
    v13 = OUTLINED_FUNCTION_107();
    goto LABEL_14;
  }

  v1 = __OFADD__(v4, 36);
  v6 = v4 + 36;
  if (v1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    goto LABEL_13;
  }

  if (__OFADD__(v7, v3))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_136(v2);
  if (v1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (__OFADD__(v8, 4))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_36_0();
  if (!v12)
  {
    goto LABEL_20;
  }

  if (__OFADD__(v11, 4 * v10))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_108(v9);
  if (!v1)
  {
    v13 = OUTLINED_FUNCTION_183();
    v14 = v15;
LABEL_14:
    OUTLINED_FUNCTION_51(v13, v14);
    return;
  }

LABEL_22:
  __break(1u);
}

void WK2_CurrentWeather.hasPrecipitationAmountNext6hByType.getter()
{
  OUTLINED_FUNCTION_181();
  if (v2)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v1) < 0x27u)
    {
      OUTLINED_FUNCTION_32_0();
      return;
    }

    v2 = __OFADD__(v1, 38);
    v3 = v1 + 38;
    if (!v2)
    {
      v4 = *(v0 + v3) != 0;
      return;
    }
  }

  __break(1u);
}

void WK2_CurrentWeather.precipitationAmountNext6hByType(at:)()
{
  OUTLINED_FUNCTION_10();
  if (v1)
  {
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_137(v0);
  if (v5 < 0x27)
  {
LABEL_13:
    v13 = OUTLINED_FUNCTION_107();
    goto LABEL_14;
  }

  v1 = __OFADD__(v4, 38);
  v6 = v4 + 38;
  if (v1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    goto LABEL_13;
  }

  if (__OFADD__(v7, v3))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_136(v2);
  if (v1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (__OFADD__(v8, 4))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_36_0();
  if (!v12)
  {
    goto LABEL_20;
  }

  if (__OFADD__(v11, 4 * v10))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_108(v9);
  if (!v1)
  {
    v13 = OUTLINED_FUNCTION_183();
    v14 = v15;
LABEL_14:
    OUTLINED_FUNCTION_51(v13, v14);
    return;
  }

LABEL_22:
  __break(1u);
}

void WK2_CurrentWeather.hasPrecipitationAmountNext24hByType.getter()
{
  OUTLINED_FUNCTION_181();
  if (v2)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v1) < 0x29u)
    {
      OUTLINED_FUNCTION_32_0();
      return;
    }

    v2 = __OFADD__(v1, 40);
    v3 = v1 + 40;
    if (!v2)
    {
      v4 = *(v0 + v3) != 0;
      return;
    }
  }

  __break(1u);
}

void WK2_CurrentWeather.precipitationAmountNext24hByType(at:)()
{
  OUTLINED_FUNCTION_10();
  if (v1)
  {
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_137(v0);
  if (v5 < 0x29)
  {
LABEL_13:
    v13 = OUTLINED_FUNCTION_107();
    goto LABEL_14;
  }

  v1 = __OFADD__(v4, 40);
  v6 = v4 + 40;
  if (v1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    goto LABEL_13;
  }

  if (__OFADD__(v7, v3))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_136(v2);
  if (v1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (__OFADD__(v8, 4))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_36_0();
  if (!v12)
  {
    goto LABEL_20;
  }

  if (__OFADD__(v11, 4 * v10))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_108(v9);
  if (!v1)
  {
    v13 = OUTLINED_FUNCTION_183();
    v14 = v15;
LABEL_14:
    OUTLINED_FUNCTION_51(v13, v14);
    return;
  }

LABEL_22:
  __break(1u);
}

void WK2_CurrentWeather.hasPrecipitationAmountPrevious1hByType.getter()
{
  OUTLINED_FUNCTION_181();
  if (v2)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v1) < 0x2Bu)
    {
      OUTLINED_FUNCTION_32_0();
      return;
    }

    v2 = __OFADD__(v1, 42);
    v3 = v1 + 42;
    if (!v2)
    {
      v4 = *(v0 + v3) != 0;
      return;
    }
  }

  __break(1u);
}

void WK2_CurrentWeather.precipitationAmountPrevious1hByType(at:)()
{
  OUTLINED_FUNCTION_10();
  if (v1)
  {
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_137(v0);
  if (v5 < 0x2B)
  {
LABEL_13:
    v13 = OUTLINED_FUNCTION_107();
    goto LABEL_14;
  }

  v1 = __OFADD__(v4, 42);
  v6 = v4 + 42;
  if (v1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    goto LABEL_13;
  }

  if (__OFADD__(v7, v3))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_136(v2);
  if (v1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (__OFADD__(v8, 4))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_36_0();
  if (!v12)
  {
    goto LABEL_20;
  }

  if (__OFADD__(v11, 4 * v10))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_108(v9);
  if (!v1)
  {
    v13 = OUTLINED_FUNCTION_183();
    v14 = v15;
LABEL_14:
    OUTLINED_FUNCTION_51(v13, v14);
    return;
  }

LABEL_22:
  __break(1u);
}

void WK2_CurrentWeather.hasPrecipitationAmountPrevious6hByType.getter()
{
  OUTLINED_FUNCTION_181();
  if (v2)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v1) < 0x2Du)
    {
      OUTLINED_FUNCTION_32_0();
      return;
    }

    v2 = __OFADD__(v1, 44);
    v3 = v1 + 44;
    if (!v2)
    {
      v4 = *(v0 + v3) != 0;
      return;
    }
  }

  __break(1u);
}

void WK2_CurrentWeather.precipitationAmountPrevious6hByType(at:)()
{
  OUTLINED_FUNCTION_10();
  if (v1)
  {
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_137(v0);
  if (v5 < 0x2D)
  {
LABEL_13:
    v13 = OUTLINED_FUNCTION_107();
    goto LABEL_14;
  }

  v1 = __OFADD__(v4, 44);
  v6 = v4 + 44;
  if (v1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    goto LABEL_13;
  }

  if (__OFADD__(v7, v3))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_136(v2);
  if (v1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (__OFADD__(v8, 4))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_36_0();
  if (!v12)
  {
    goto LABEL_20;
  }

  if (__OFADD__(v11, 4 * v10))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_108(v9);
  if (!v1)
  {
    v13 = OUTLINED_FUNCTION_183();
    v14 = v15;
LABEL_14:
    OUTLINED_FUNCTION_51(v13, v14);
    return;
  }

LABEL_22:
  __break(1u);
}

void WK2_CurrentWeather.hasPrecipitationAmountPrevious24hByType.getter()
{
  OUTLINED_FUNCTION_181();
  if (v2)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v1) < 0x2Fu)
    {
      OUTLINED_FUNCTION_32_0();
      return;
    }

    v2 = __OFADD__(v1, 46);
    v3 = v1 + 46;
    if (!v2)
    {
      v4 = *(v0 + v3) != 0;
      return;
    }
  }

  __break(1u);
}

void WK2_CurrentWeather.precipitationAmountPrevious24hByType(at:)()
{
  OUTLINED_FUNCTION_10();
  if (v1)
  {
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_137(v0);
  if (v5 < 0x2F)
  {
LABEL_13:
    v13 = OUTLINED_FUNCTION_107();
    goto LABEL_14;
  }

  v1 = __OFADD__(v4, 46);
  v6 = v4 + 46;
  if (v1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    goto LABEL_13;
  }

  if (__OFADD__(v7, v3))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_136(v2);
  if (v1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (__OFADD__(v8, 4))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_36_0();
  if (!v12)
  {
    goto LABEL_20;
  }

  if (__OFADD__(v11, 4 * v10))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_108(v9);
  if (!v1)
  {
    v13 = OUTLINED_FUNCTION_183();
    v14 = v15;
LABEL_14:
    OUTLINED_FUNCTION_51(v13, v14);
    return;
  }

LABEL_22:
  __break(1u);
}

void WK2_CurrentWeather.reserved0.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x47u)
  {
    goto LABEL_7;
  }

  v3 = __OFADD__(v2, 70);
  v4 = v2 + 70;
  if (v3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v0 + v4);
  if (v5)
  {
    v3 = __OFADD__(v5, v1);
    v6 = v5 + v1;
    if (!v3)
    {
      OUTLINED_FUNCTION_16(*(v0 + v6));
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_16(0);
}

void static WK2_CurrentWeather.add(reserved0:_:)()
{
  OUTLINED_FUNCTION_219();
  v22 = *MEMORY[0x277D85DE8];
  if ((v3 & 0x100000000) != 0)
  {
LABEL_20:
    v21 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_218();
    return;
  }

  OUTLINED_FUNCTION_30(v3, v4);
  if (v7 ^ v8 | v6)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v0 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v9))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = OUTLINED_FUNCTION_6(v5, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v0 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v7 != v8)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_5(v12);
  if (!v6 & v15)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_41(v16);
      *(v18 + 4) = 70;
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v20 <= 0x46)
    {
      LOWORD(v20) = 70;
    }

    *(v19 + 64) = v20;
    goto LABEL_20;
  }

  __break(1u);
}

void static WK2_CurrentWeather.add(windGust:_:)()
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_97();
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_23:
      v20 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_225();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v0 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v0 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v2, v13);
    v11 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_48(v15);
      *(v17 + 4) = 80;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0x50)
    {
      LOWORD(v19) = 80;
    }

    *(v18 + 64) = v19;
    goto LABEL_23;
  }

  __break(1u);
}

uint64_t static WK2_CurrentWeather.createCurrentWeather(_:metadataOffset:asOf:cloudCover:cloudCoverLowAltPct:cloudCoverMidAltPct:cloudCoverHighAltPct:conditionCode:daylight:humidity:perceivedPrecipitationIntensity:precipitationAmount1h:precipitationAmount6h:precipitationAmount24h:precipitationAmountNext1h:precipitationAmountNext6h:precipitationAmountNext24h:precipitationAmountNext1hByTypeVectorOffset:precipitationAmountNext6hByTypeVectorOffset:precipitationAmountNext24hByTypeVectorOffset:precipitationAmountPrevious1hByTypeVectorOffset:precipitationAmountPrevious6hByTypeVectorOffset:precipitationAmountPrevious24hByTypeVectorOffset:precipitationIntensity:pressure:pressureTrend:snowfallAmount1h:snowfallAmount6h:snowfallAmount24h:snowfallAmountNext1h:snowfallAmountNext6h:snowfallAmountNext24h:temperature:temperatureApparent:reserved0:temperatureDewPoint:uvIndex:visibility:windDirection:windGust:windSpeed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int *a10, int *a11, int *a12, int *a13, int *a14, int *a15, uint64_t a16, unsigned __int8 *a17)
{
  OUTLINED_FUNCTION_210();
  v33 = v17;
  v19 = *v18;
  v21 = *v20;
  v25 = *a10;
  v26 = *a11;
  v27 = *a12;
  v28 = *a13;
  v29 = *a14;
  v30 = *a15;
  v31 = *a17;
  static WK2_CurrentWeather.startCurrentWeather(_:)(v22);
  at = v23;
  static WK2_CurrentWeather.add(metadata:_:)();
  OUTLINED_FUNCTION_154();
  static WK2_CurrentWeather.add(asOf:_:)();
  static WK2_CurrentWeather.add(cloudCover:_:)();
  OUTLINED_FUNCTION_264();
  static WK2_CurrentWeather.add(cloudCoverLowAltPct:_:)();
  OUTLINED_FUNCTION_263();
  static WK2_CurrentWeather.add(cloudCoverMidAltPct:_:)();
  static WK2_CurrentWeather.add(cloudCoverHighAltPct:_:)();
  static WK2_CurrentWeather.add(conditionCode:_:)();
  OUTLINED_FUNCTION_249();
  static WK2_CurrentWeather.add(daylight:_:)();
  static WK2_CurrentWeather.add(humidity:_:)();
  OUTLINED_FUNCTION_262();
  static WK2_CurrentWeather.add(perceivedPrecipitationIntensity:_:)();
  OUTLINED_FUNCTION_234();
  static WK2_CurrentWeather.add(precipitationAmount1h:_:)();
  OUTLINED_FUNCTION_233();
  static WK2_CurrentWeather.add(precipitationAmount6h:_:)();
  OUTLINED_FUNCTION_178();
  static WK2_CurrentWeather.add(precipitationAmount24h:_:)();
  OUTLINED_FUNCTION_139();
  static WK2_CurrentWeather.add(precipitationAmountNext1h:_:)();
  OUTLINED_FUNCTION_257();
  static WK2_CurrentWeather.add(precipitationAmountNext6h:_:)();
  OUTLINED_FUNCTION_255();
  static WK2_CurrentWeather.add(precipitationAmountNext24h:_:)();
  OUTLINED_FUNCTION_104();
  static WK2_CurrentWeather.addVectorOf(precipitationAmountNext1hByType:_:)();
  OUTLINED_FUNCTION_104();
  static WK2_CurrentWeather.addVectorOf(precipitationAmountNext6hByType:_:)();
  OUTLINED_FUNCTION_104();
  static WK2_CurrentWeather.addVectorOf(precipitationAmountNext24hByType:_:)();
  OUTLINED_FUNCTION_104();
  static WK2_CurrentWeather.addVectorOf(precipitationAmountPrevious1hByType:_:)();
  OUTLINED_FUNCTION_104();
  static WK2_CurrentWeather.addVectorOf(precipitationAmountPrevious6hByType:_:)();
  OUTLINED_FUNCTION_104();
  static WK2_CurrentWeather.addVectorOf(precipitationAmountPrevious24hByType:_:)();
  static WK2_CurrentWeather.add(precipitationIntensity:_:)();
  OUTLINED_FUNCTION_251();
  static WK2_CurrentWeather.add(pressure:_:)();
  static WK2_CurrentWeather.add(pressureTrend:_:)();
  static WK2_CurrentWeather.add(snowfallAmount1h:_:)();
  static WK2_CurrentWeather.add(snowfallAmount6h:_:)();
  static WK2_CurrentWeather.add(snowfallAmount24h:_:)();
  static WK2_CurrentWeather.add(snowfallAmountNext1h:_:)();
  static WK2_CurrentWeather.add(snowfallAmountNext6h:_:)();
  static WK2_CurrentWeather.add(snowfallAmountNext24h:_:)();
  static WK2_CurrentWeather.add(temperature:_:)();
  static WK2_CurrentWeather.add(temperatureApparent:_:)();
  OUTLINED_FUNCTION_35();
  static WK2_CurrentWeather.add(reserved0:_:)();
  static WK2_CurrentWeather.add(temperatureDewPoint:_:)();
  static WK2_CurrentWeather.add(uvIndex:_:)();
  static WK2_CurrentWeather.add(visibility:_:)();
  static WK2_CurrentWeather.add(windDirection:_:)();
  static WK2_CurrentWeather.add(windGust:_:)();
  static WK2_CurrentWeather.add(windSpeed:_:)();
  result = FlatBufferBuilder.endTable(at:)(at);
  *v33 = result;
  return result;
}

void static WK2_DailyForecast.verify<A>(_:at:of:)(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (v2)
  {
    return;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_64();
  sub_272B544C8(v3, v4, v5, v6, v7);
  if (__src[2] < 7)
  {
    goto LABEL_8;
  }

  v8 = __src[1] + 6;
  if (LOBYTE(__src[3]) == 1)
  {
    OUTLINED_FUNCTION_87(__src[8]);
    if (v9)
    {
      *__dst = MEMORY[0x277D84C58];
      v12 = &qword_2808A3160;
      v13 = &unk_272B87CC0;
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_76();
  v10 = __src[8];
  if (!*(*(__src[8] + 24) + v8))
  {
LABEL_8:
    sub_272B5C86C();
    OUTLINED_FUNCTION_177();
    *v14 = 6;
    OUTLINED_FUNCTION_180(v14, v39);
    *(v15 + 8) = 1937334628;
    *(v15 + 16) = 0xE400000000000000;
    OUTLINED_FUNCTION_37(v15, *&__dst[32], *&__dst[16], *__dst);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31();
  if (v11 == 1)
  {
    *__dst = MEMORY[0x277D84CC0];
    v12 = &qword_2808A3170;
    v13 = &unk_272B89910;
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    sub_272B87730();
    OUTLINED_FUNCTION_185();
    v16 = OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_54(v16, v17);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_59(*(v10 + 24));
  v19 = OUTLINED_FUNCTION_258();
  v21 = sub_272B54DD0(v19, v20);
  v23 = v21 + v22;
  if (v21 < v21 + v22)
  {
    do
    {
      v24 = v21 + 4;
      if (__OFADD__(v21, 4))
      {
        v25 = 0x7FFFFFFFFFFFFFFFLL;
        if ((__src[3] & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v25 = v21 + 4;
        if (!LOBYTE(__src[3]))
        {
          goto LABEL_22;
        }
      }

      if (((*(__src[8] + 24) + v21) & 3) != 0)
      {
        *__dst = MEMORY[0x277D84CC0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3170, &unk_272B89910);
        sub_272B87730();
        OUTLINED_FUNCTION_204();
        v37 = OUTLINED_FUNCTION_177();
        OUTLINED_FUNCTION_224(v37, v38);
LABEL_11:
        OUTLINED_FUNCTION_21(v18, *&__dst[32], *&__dst[16], *__dst);
LABEL_12:
        swift_willThrow();
LABEL_13:
        memcpy(__dst, __src, sizeof(__dst));
        sub_272B522C4(__dst);
        return;
      }

LABEL_22:
      if ((v24 & 0x8000000000000000) != 0)
      {
        v24 = -v24;
      }

      v26 = *(__src[8] + 32);
      if ((v26 & 0x8000000000000000) != 0 || v26 < v24)
      {
        sub_272B5C86C();
        v29 = OUTLINED_FUNCTION_177();
        OUTLINED_FUNCTION_113(v29, v30);
        v33 = *&__dst[16];
        v32 = *&__dst[32];
        *(v31 + 16) = *__dst;
        *(v31 + 32) = v33;
        *(v31 + 48) = v32;
        v34 = 1;
LABEL_32:
        *(v31 + 64) = v34;
        goto LABEL_12;
      }

      LODWORD(__src[5]) += 4;
      if (LODWORD(__src[11]) < LODWORD(__src[5]))
      {
        sub_272B5C86C();
        v35 = OUTLINED_FUNCTION_177();
        OUTLINED_FUNCTION_167(v35, v36);
        goto LABEL_32;
      }

      *(*(__src[8] + 24) + v21);
      v27 = OUTLINED_FUNCTION_258();
      sub_272B56B1C(v27, v28);
      v21 = v25;
    }

    while (v25 < v23);
  }

  if (!__OFSUB__(__src[7], 1))
  {
    --__src[7];
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_272B5FA04@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, int *a3@<X2>, void (*a4)(void)@<X3>, void (*a5)(void)@<X4>, void (*a6)(int *, uint64_t)@<X5>, _DWORD *a7@<X8>)
{
  v11 = *a2;
  v12 = *a3;
  a4();
  OUTLINED_FUNCTION_272();
  a5();
  v14 = v12;
  a6(&v14, a1);
  result = OUTLINED_FUNCTION_283();
  *a7 = result;
  return result;
}

void sub_272B5FA88(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    sub_272B544C8(4, 0x617461646174656DLL, 0xE800000000000000, 1, sub_272B51C30);
    sub_272B544C8(6, 0x7473616365726F66, 0xE900000000000073, 1, sub_272B6ADBC);
    if (__OFSUB__(__src[7], 1))
    {
      __break(1u);
    }

    else
    {
      --__src[7];
      memcpy(v3, __src, 0x65uLL);
      sub_272B522C4(v3);
    }
  }
}

void static WK2_PeriodicForecasts.verify<A>(_:at:of:)(int a1, unint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_92(a1, a2, a3, a4, a5, a6, a7, a8, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
  if (!v8)
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_133();
    OUTLINED_FUNCTION_64();
    sub_272B544C8(v9, v10, v11, v12, v13);
    OUTLINED_FUNCTION_134();
    OUTLINED_FUNCTION_91();
    sub_272B544C8(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_109();
    if (v28)
    {
      __break(1u);
    }

    else
    {
      v43 = v27;
      OUTLINED_FUNCTION_93(v19, v20, v21, v22, v23, v24, v25, v26, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
      sub_272B522C4(&v29);
    }
  }
}

void static WK2_PeriodicForecast.verify<A>(_:at:of:)(int a1, unint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_92(a1, a2, a3, a4, a5, a6, a7, a8, v55, *(&v55 + 1), v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
  if (!v8)
  {
    if (v69 >= 5)
    {
      OUTLINED_FUNCTION_70();
      if (v17)
      {
        OUTLINED_FUNCTION_42(v9, v10, v11, v12, v13, v14, v15, v16, v55, *(&v55 + 1), v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75);
        if (v18)
        {
          *&v55 = MEMORY[0x277D84C58];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3160, &unk_272B87CC0);
          OUTLINED_FUNCTION_195();
          OUTLINED_FUNCTION_185();
          v44 = OUTLINED_FUNCTION_177();
          OUTLINED_FUNCTION_113(v44, v45);
          OUTLINED_FUNCTION_9_0(v46, v47, v48, v49, v50, v51, v52, v53, v55, v54, v56);
          v34 = swift_willThrow();
LABEL_11:
          OUTLINED_FUNCTION_93(v34, v35, v36, v37, v38, v39, v40, v41, v55, *(&v55 + 1), v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
          sub_272B522C4(&v55);
          return;
        }
      }

      OUTLINED_FUNCTION_61(v9, v10, v11, v12, v13, v14, v15, v16, v55, *(&v55 + 1), v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
      OUTLINED_FUNCTION_34_0(v19, v20, v21, v22, v23, v24, v25, v26, v55, *(&v55 + 1), v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75);
      if (v27)
      {
        v28 = OUTLINED_FUNCTION_46(v27, v55, *(&v55 + 1), v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
        OUTLINED_FUNCTION_174(v28);
      }
    }

    OUTLINED_FUNCTION_134();
    OUTLINED_FUNCTION_91();
    sub_272B53EA4(v29, v30, v31, v32, v33);
    OUTLINED_FUNCTION_109();
    if (v43)
    {
      __break(1u);
      return;
    }

    v74 = v42;
    goto LABEL_11;
  }
}

void sub_272B5FE4C(int a1, unint64_t a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8)
{
  OUTLINED_FUNCTION_92(a1, a2, a3, a4, a5, a6, a7, a8, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  if (!v8)
  {
    OUTLINED_FUNCTION_24(v10, v11, v12, v13, sub_272B51C30);
    OUTLINED_FUNCTION_134();
    OUTLINED_FUNCTION_91();
    sub_272B53EA4(v14, v15, v16, v17, a8);
    OUTLINED_FUNCTION_109();
    if (v27)
    {
      __break(1u);
    }

    else
    {
      v42 = v26;
      OUTLINED_FUNCTION_93(v18, v19, v20, v21, v22, v23, v24, v25, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
      sub_272B522C4(&v28);
    }
  }
}

void static WK2_NextHourForecast.add(forecastEnd:_:)()
{
  OUTLINED_FUNCTION_219();
  v22 = *MEMORY[0x277D85DE8];
  if ((v3 & 0x100000000) != 0)
  {
LABEL_20:
    v21 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_218();
    return;
  }

  OUTLINED_FUNCTION_30(v3, v4);
  if (v7 ^ v8 | v6)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v0 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v9))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = OUTLINED_FUNCTION_6(v5, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v0 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v7 != v8)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_5(v12);
  if (!v6 & v15)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_41(v16);
      OUTLINED_FUNCTION_211();
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_238();
    if (!(!v6 & v15))
    {
      v19 = v20;
    }

    *(v18 + 64) = v19;
    goto LABEL_20;
  }

  __break(1u);
}

void WK2_WeatherChanges.changes(at:)()
{
  OUTLINED_FUNCTION_10();
  if (v1)
  {
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_137(v0);
  if (v5 < 0xB)
  {
LABEL_13:
    v13 = OUTLINED_FUNCTION_107();
    goto LABEL_14;
  }

  v1 = __OFADD__(v4, 10);
  v6 = v4 + 10;
  if (v1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    goto LABEL_13;
  }

  if (__OFADD__(v7, v3))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_136(v2);
  if (v1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (__OFADD__(v8, 4))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_36_0();
  if (!v12)
  {
    goto LABEL_20;
  }

  if (__OFADD__(v11, 4 * v10))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_108(v9);
  if (!v1)
  {
    v13 = OUTLINED_FUNCTION_183();
    v14 = v15;
LABEL_14:
    OUTLINED_FUNCTION_51(v13, v14);
    return;
  }

LABEL_22:
  __break(1u);
}

void static WK2_WeatherChanges.add(forecastEnd:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_106();
  v23 = *MEMORY[0x277D85DE8];
  if (!v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v5)
    {
LABEL_22:
      v22 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v7 ^ v8 | v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v0 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v9))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v10 = OUTLINED_FUNCTION_6(v6, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v0 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v7 != v8)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v3, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_43(v12);
  *(v15 - 4) = v2;
  OUTLINED_FUNCTION_55();
  if (!v5 & v16)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v18 & 1) == 0)
  {
    if (*(v17 + 32))
    {
      OUTLINED_FUNCTION_41(v17);
      OUTLINED_FUNCTION_193();
    }

    OUTLINED_FUNCTION_33(v17, *(v17 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_191();
    if (!(!v5 & v16))
    {
      v20 = v21;
    }

    *(v19 + 64) = v20;
    goto LABEL_22;
  }

  __break(1u);
}

uint64_t static WK2_WeatherChanges.createWeatherChanges(_:metadataOffset:forecastStart:forecastEnd:changesVectorOffset:)@<X0>(_BYTE *a1@<X0>, unsigned int *a2@<X1>, int *a3@<X4>, _DWORD *a4@<X8>)
{
  v5 = *a2;
  v6 = *a3;
  static WK2_WeatherChanges.startWeatherChanges(_:)(a1);
  OUTLINED_FUNCTION_272();
  static WK2_CurrentWeather.add(metadata:_:)();
  static WK2_CurrentWeather.add(asOf:_:)();
  static WK2_WeatherChanges.add(forecastEnd:_:)();
  static WK2_Weather.add(forecastHourly:_:)();
  result = OUTLINED_FUNCTION_283();
  *a4 = result;
  return result;
}

void static WK2_LocationInfo.verify<A>(_:at:of:)(int a1, unint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_92(a1, a2, a3, a4, a5, a6, a7, a8, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
  if (!v8)
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_133();
    OUTLINED_FUNCTION_64();
    sub_272B544C8(v9, v10, v11, v12, v13);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_134();
    OUTLINED_FUNCTION_86();
    sub_272B544C8(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_202();
    OUTLINED_FUNCTION_86();
    sub_272B544C8(v19, v20, v21, v22, v23);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_232();
    OUTLINED_FUNCTION_64();
    sub_272B544C8(v24, v25, v26, v27, v28);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_91();
    sub_272B544C8(v29, v30, v31, v32, v33);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_189();
    OUTLINED_FUNCTION_86();
    sub_272B544C8(v34, v35, v36, v37, v38);
    OUTLINED_FUNCTION_109();
    if (v48)
    {
      __break(1u);
    }

    else
    {
      v63 = v47;
      OUTLINED_FUNCTION_93(v39, v40, v41, v42, v43, v44, v45, v46, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
      sub_272B522C4(&v49);
    }
  }
}

void sub_272B60ADC(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    sub_272B544C8(4, 0x617461646174656DLL, 0xE800000000000000, 1, sub_272B51C30);
    sub_272B53EA4(6, 0x7372756F68, 0xE500000000000000, 1, sub_272B66A0C);
    sub_272B5DACC(8u, 0xD000000000000014, 0x8000000272B8B830, 0, MEMORY[0x277D83A90], &unk_2808A3178, &unk_272B87CD0, sub_272B67298);
    if (__OFSUB__(__src[7], 1))
    {
      __break(1u);
    }

    else
    {
      --__src[7];
      memcpy(v3, __src, 0x65uLL);
      sub_272B522C4(v3);
    }
  }
}

void static WK2_HourlyMarineConditions.verify<A>(_:at:of:)(int a1, unint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_92(a1, a2, a3, a4, a5, a6, a7, a8, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  if (!v8)
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_133();
    OUTLINED_FUNCTION_64();
    sub_272B544C8(v9, v10, v11, v12, v13);
    OUTLINED_FUNCTION_134();
    OUTLINED_FUNCTION_91();
    sub_272B53EA4(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_101();
    OUTLINED_FUNCTION_67();
    sub_272B5DACC(v19, v20, v21, v22, v23, v24, v25, v26);
    OUTLINED_FUNCTION_109();
    if (v36)
    {
      __break(1u);
    }

    else
    {
      v51 = v35;
      OUTLINED_FUNCTION_93(v27, v28, v29, v30, v31, v32, v33, v34, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
      sub_272B522C4(&v37);
    }
  }
}

void WK2_TideEvents.tideStationName.getter()
{
  OUTLINED_FUNCTION_65();
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v3) < 0xBu)
  {
    goto LABEL_7;
  }

  v4 = __OFADD__(v3, 10);
  v5 = v3 + 10;
  if (v4)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v6 = *(v2 + v5);
  if (v6)
  {
    if (!__OFADD__(v6, v1))
    {
      v7 = *(v0 + 8);
      v8 = *(v0 + 16);
      Table.directString(at:)(v6 + v1);
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_169();
}

uint64_t static WK2_TideEvents.createTideEvents(_:metadataOffset:eventsVectorOffset:hoursVectorOffset:tideStationNameOffset:closestWaterLocationOffset:)(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  OUTLINED_FUNCTION_74(a1, a2, a3, a4);
  v9 = *v8;
  v11 = *v10;
  v12 = static WK2_TideEvents.startTideEvents(_:)();
  v13 = v12;
  OUTLINED_FUNCTION_111(v12, v14, v15, v16, v17, v18, v19, v20, v54, v59, v5);
  static WK2_CurrentWeather.add(metadata:_:)();
  OUTLINED_FUNCTION_111(v21, v22, v23, v24, v25, v26, v27, v28, v55, v60, v6);
  static WK2_Weather.add(currentWeather:_:)();
  OUTLINED_FUNCTION_111(v29, v30, v31, v32, v33, v34, v35, v36, v56, v61, v7);
  static WK2_Weather.add(forecastDaily:_:)();
  OUTLINED_FUNCTION_111(v37, v38, v39, v40, v41, v42, v43, v44, v57, v62, v9);
  static WK2_Weather.add(forecastHourly:_:)();
  OUTLINED_FUNCTION_111(v45, v46, v47, v48, v49, v50, v51, v52, v58, v63, v11);
  static WK2_Weather.add(forecastNextHour:_:)();
  result = FlatBufferBuilder.endTable(at:)(v13);
  *v4 = result;
  return result;
}

void sub_272B60E44(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    sub_272B544C8(4, 0x617461646174656DLL, 0xE800000000000000, 1, sub_272B51C30);
    sub_272B53EA4(6, 0x73746E657665, 0xE600000000000000, 1, sub_272B66F18);
    sub_272B544C8(8, 0x7372756F68, 0xE500000000000000, 1, sub_272B6B214);
    sub_272B544C8(10, 0x7461745365646974, 0xEF656D614E6E6F69, 0, sub_272B54784);
    sub_272B5DACC(0xCu, 0xD000000000000014, 0x8000000272B8B830, 0, MEMORY[0x277D83A90], &unk_2808A3178, &unk_272B87CD0, sub_272B67298);
    if (__OFSUB__(__src[7], 1))
    {
      __break(1u);
    }

    else
    {
      --__src[7];
      memcpy(v3, __src, 0x65uLL);
      sub_272B522C4(v3);
    }
  }
}

void static WK2_TideEvents.verify<A>(_:at:of:)(int a1, unint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_92(a1, a2, a3, a4, a5, a6, a7, a8, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
  if (!v8)
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_133();
    OUTLINED_FUNCTION_64();
    sub_272B544C8(v9, v10, v11, v12, v13);
    OUTLINED_FUNCTION_134();
    OUTLINED_FUNCTION_91();
    sub_272B53EA4(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_202();
    OUTLINED_FUNCTION_91();
    sub_272B544C8(v19, v20, v21, v22, v23);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_232();
    OUTLINED_FUNCTION_86();
    sub_272B544C8(v24, v25, v26, v27, v28);
    OUTLINED_FUNCTION_101();
    OUTLINED_FUNCTION_67();
    sub_272B5DACC(v29, v30, v31, v32, v33, v34, v35, v36);
    OUTLINED_FUNCTION_109();
    if (v46)
    {
      __break(1u);
    }

    else
    {
      v61 = v45;
      OUTLINED_FUNCTION_93(v37, v38, v39, v40, v41, v42, v43, v44, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
      sub_272B522C4(&v47);
    }
  }
}

void static WK2_Location.add(latitude:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  sub_272B694A8();
}

uint64_t static WK2_Location.createLocation(_:latitude:longitude:)()
{
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_165();
  static WK2_HourTide.startHourTide(_:)(v1);
  v3 = v2;
  OUTLINED_FUNCTION_178();
  static WK2_Location.add(latitude:_:)();
  OUTLINED_FUNCTION_139();
  static WK2_HourTide.add(height:_:)();
  result = FlatBufferBuilder.endTable(at:)(v3);
  *v0 = result;
  return result;
}

void static WK2_Pollutant.createPollutant(_:pollutantType:amount:units:)()
{
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_165();
  v3 = *v2;
  v5 = *v4;
  static WK2_Pollutant.startPollutant(_:)();
  OUTLINED_FUNCTION_278();
  OUTLINED_FUNCTION_139();
  static WK2_HourTide.add(height:_:)();
  static WK2_Pollutant.add(units:_:)();
  *v0 = FlatBufferBuilder.endTable(at:)(v1);
  OUTLINED_FUNCTION_281();
}

void WK2_PrecipitationRange.precipitationType.getter()
{
  OUTLINED_FUNCTION_13_0();
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + v3) < 5u)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v4 = __OFADD__(v3, 4);
  v5 = v3 + 4;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = *(v1 + v5);
  if (!v6)
  {
    goto LABEL_7;
  }

  if (!__OFADD__(v6, v2))
  {
    v7 = OUTLINED_FUNCTION_124(v1);
    WK2_PrecipitationType.init(rawValue:)(v7);
    OUTLINED_FUNCTION_164();
LABEL_8:
    *v0 = v8;
    return;
  }

LABEL_11:
  __break(1u);
}

void static WK2_PrecipitationRange.add(expectedSnow:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  sub_272B64510();
}

uint64_t static WK2_PrecipitationRange.createPrecipitationRange(_:precipitationType:expected:minimumSnow:maximumSnow:expectedSnow:)()
{
  OUTLINED_FUNCTION_165();
  v3 = *v2;
  static WK2_TideEvents.startTideEvents(_:)();
  OUTLINED_FUNCTION_278();
  OUTLINED_FUNCTION_234();
  static WK2_HourTide.add(height:_:)();
  OUTLINED_FUNCTION_233();
  static WK2_ForecastMinute.add(precipitationIntensity:_:)();
  OUTLINED_FUNCTION_178();
  static WK2_ForecastMinute.add(perceivedPrecipitationIntensity:_:)();
  OUTLINED_FUNCTION_139();
  static WK2_PrecipitationRange.add(expectedSnow:_:)();
  result = FlatBufferBuilder.endTable(at:)(v1);
  *v0 = result;
  return result;
}

void sub_272B615EC(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    v3 = __src[2];
    if (__src[2] <= 4)
    {
      goto LABEL_49;
    }

    v4 = __src[1] + 4;
    if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
    {
      Verifier.rangeInBuffer(position:size:)(__src[1] + 4, 2);
      if (v5)
      {
        goto LABEL_53;
      }

      if (*(*(__src[8] + 24) + v4))
      {
        Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v4), 1);
        if (v6)
        {
          goto LABEL_53;
        }
      }

      if (v3 < 7)
      {
        goto LABEL_49;
      }

      v4 = __src[1] + 6;
      v7 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
      {
        Verifier.rangeInBuffer(position:size:)(__src[1] + 6, 2);
        if (v8)
        {
          goto LABEL_53;
        }

        v9 = *(__src[8] + 24);
        v10 = *(v9 + v4);
        if (*(v9 + v4))
        {
          v4 = __src[0] + v10;
          if (((v9 + LOBYTE(__src[0]) + v10) & 3) != 0)
          {
            v11 = v7;
          }

          else
          {
            v11 = 0;
          }

          if (v11 == 1)
          {
            goto LABEL_17;
          }

          Verifier.rangeInBuffer(position:size:)(__src[0] + v10, 4);
          if (v14)
          {
            goto LABEL_53;
          }
        }

        if (v3 < 9)
        {
          goto LABEL_49;
        }

        v4 = __src[1] + 8;
        v15 = LOBYTE(__src[3]);
        if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
        {
          Verifier.rangeInBuffer(position:size:)(__src[1] + 8, 2);
          if (v16)
          {
            goto LABEL_53;
          }

          v17 = *(__src[8] + 24);
          v18 = *(v17 + v4);
          if (*(v17 + v4))
          {
            v4 = __src[0] + v18;
            if (((v17 + LOBYTE(__src[0]) + v18) & 3) != 0)
            {
              v19 = v15;
            }

            else
            {
              v19 = 0;
            }

            if (v19 == 1)
            {
              goto LABEL_17;
            }

            Verifier.rangeInBuffer(position:size:)(__src[0] + v18, 4);
            if (v20)
            {
              goto LABEL_53;
            }
          }

          if (v3 < 0xB)
          {
            goto LABEL_49;
          }

          v4 = __src[1] + 10;
          v21 = LOBYTE(__src[3]);
          if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
          {
            Verifier.rangeInBuffer(position:size:)(__src[1] + 10, 2);
            if (v22)
            {
              goto LABEL_53;
            }

            v23 = *(__src[8] + 24);
            v24 = *(v23 + v4);
            if (*(v23 + v4))
            {
              v4 = __src[0] + v24;
              if (((v23 + LOBYTE(__src[0]) + v24) & 3) != 0)
              {
                v25 = v21;
              }

              else
              {
                v25 = 0;
              }

              if (v25 == 1)
              {
                goto LABEL_17;
              }

              Verifier.rangeInBuffer(position:size:)(__src[0] + v24, 4);
              if (v26)
              {
                goto LABEL_53;
              }
            }

            if (v3 < 0xD)
            {
LABEL_49:
              if (__OFSUB__(__src[7], 1))
              {
                __break(1u);
                return;
              }

              --__src[7];
              goto LABEL_53;
            }

            v4 = __src[1] + 12;
            v27 = LOBYTE(__src[3]);
            if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
            {
              Verifier.rangeInBuffer(position:size:)(__src[1] + 12, 2);
              if (v28)
              {
                goto LABEL_53;
              }

              v29 = *(__src[8] + 24);
              v30 = *(v29 + v4);
              if (*(v29 + v4))
              {
                v4 = __src[0] + v30;
                if (((v29 + LOBYTE(__src[0]) + v30) & 3) != 0)
                {
                  v31 = v27;
                }

                else
                {
                  v31 = 0;
                }

                if (v31 != 1)
                {
                  Verifier.rangeInBuffer(position:size:)(__src[0] + v30, 4);
                  if (!v32)
                  {
                    goto LABEL_49;
                  }

LABEL_53:
                  memcpy(v39, __src, sizeof(v39));
                  sub_272B522C4(v39);
                  return;
                }

LABEL_17:
                *v39 = MEMORY[0x277D83A90];
                v12 = &unk_2808A3178;
                v13 = &unk_272B87CD0;
LABEL_52:
                __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
                v33 = sub_272B87730();
                v35 = v34;
                sub_272B5C86C();
                swift_allocError();
                *v36 = v4;
                *(v36 + 8) = v33;
                *(v36 + 16) = v35;
                v37 = *&v39[32];
                v38 = *&v39[16];
                *(v36 + 24) = *v39;
                *(v36 + 40) = v38;
                *(v36 + 56) = v37;
                *(v36 + 64) = 0;
                swift_willThrow();
                goto LABEL_53;
              }

              goto LABEL_49;
            }
          }
        }
      }
    }

    *v39 = MEMORY[0x277D84C58];
    v12 = &qword_2808A3160;
    v13 = &unk_272B87CC0;
    goto LABEL_52;
  }
}

void WK2_DayWeatherConditions.hasPrecipitationAmountByType.getter()
{
  OUTLINED_FUNCTION_181();
  if (v2)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v1) < 0x19u)
    {
      OUTLINED_FUNCTION_32_0();
      return;
    }

    v2 = __OFADD__(v1, 24);
    v3 = v1 + 24;
    if (!v2)
    {
      v4 = *(v0 + v3) != 0;
      return;
    }
  }

  __break(1u);
}

void WK2_DayWeatherConditions.precipitationAmountByType(at:)()
{
  OUTLINED_FUNCTION_10();
  if (v1)
  {
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_137(v0);
  if (v5 < 0x19)
  {
LABEL_13:
    v13 = OUTLINED_FUNCTION_107();
    goto LABEL_14;
  }

  v1 = __OFADD__(v4, 24);
  v6 = v4 + 24;
  if (v1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    goto LABEL_13;
  }

  if (__OFADD__(v7, v3))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_136(v2);
  if (v1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (__OFADD__(v8, 4))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_36_0();
  if (!v12)
  {
    goto LABEL_20;
  }

  if (__OFADD__(v11, 4 * v10))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_108(v9);
  if (!v1)
  {
    v13 = OUTLINED_FUNCTION_183();
    v14 = v15;
LABEL_14:
    OUTLINED_FUNCTION_51(v13, v14);
    return;
  }

LABEL_22:
  __break(1u);
}

void static WK2_DayWeatherConditions.add(moonrise:_:)()
{
  OUTLINED_FUNCTION_219();
  v21 = *MEMORY[0x277D85DE8];
  if ((v3 & 0x100000000) != 0)
  {
LABEL_20:
    v20 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_218();
    return;
  }

  OUTLINED_FUNCTION_30(v3, v4);
  if (v7 ^ v8 | v6)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v0 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v9))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = OUTLINED_FUNCTION_6(v5, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v0 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v7 != v8)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_5(v12);
  if (!v6 & v15)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_41(v16);
      OUTLINED_FUNCTION_271();
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v19 <= 0x12)
    {
      LOWORD(v19) = 18;
    }

    *(v18 + 64) = v19;
    goto LABEL_20;
  }

  __break(1u);
}

void static WK2_DayWeatherConditions.add(moonset:_:)()
{
  OUTLINED_FUNCTION_219();
  v22 = *MEMORY[0x277D85DE8];
  if ((v3 & 0x100000000) != 0)
  {
LABEL_20:
    v21 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_218();
    return;
  }

  OUTLINED_FUNCTION_30(v3, v4);
  if (v7 ^ v8 | v6)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v0 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v9))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = OUTLINED_FUNCTION_6(v5, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v0 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v7 != v8)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_5(v12);
  if (!v6 & v15)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_41(v16);
      OUTLINED_FUNCTION_260();
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_256();
    if (!(!v6 & v15))
    {
      v19 = v20;
    }

    *(v18 + 64) = v19;
    goto LABEL_20;
  }

  __break(1u);
}

void static WK2_DayWeatherConditions.add(sunrise:_:)()
{
  OUTLINED_FUNCTION_219();
  v22 = *MEMORY[0x277D85DE8];
  if ((v3 & 0x100000000) != 0)
  {
LABEL_20:
    v21 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_218();
    return;
  }

  OUTLINED_FUNCTION_30(v3, v4);
  if (v7 ^ v8 | v6)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v0 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v9))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = OUTLINED_FUNCTION_6(v5, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v0 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v7 != v8)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_5(v12);
  if (!v6 & v15)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_41(v16);
      *(v18 + 4) = 36;
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v20 <= 0x24)
    {
      LOWORD(v20) = 36;
    }

    *(v19 + 64) = v20;
    goto LABEL_20;
  }

  __break(1u);
}

void static WK2_DayWeatherConditions.add(sunriseCivil:_:)()
{
  OUTLINED_FUNCTION_219();
  v22 = *MEMORY[0x277D85DE8];
  if ((v3 & 0x100000000) != 0)
  {
LABEL_20:
    v21 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_218();
    return;
  }

  OUTLINED_FUNCTION_30(v3, v4);
  if (v7 ^ v8 | v6)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v0 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v9))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = OUTLINED_FUNCTION_6(v5, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v0 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v7 != v8)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_5(v12);
  if (!v6 & v15)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_41(v16);
      *(v18 + 4) = 38;
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v20 <= 0x26)
    {
      LOWORD(v20) = 38;
    }

    *(v19 + 64) = v20;
    goto LABEL_20;
  }

  __break(1u);
}

void static WK2_DayWeatherConditions.add(sunriseNautical:_:)()
{
  OUTLINED_FUNCTION_219();
  v22 = *MEMORY[0x277D85DE8];
  if ((v3 & 0x100000000) != 0)
  {
LABEL_20:
    v21 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_218();
    return;
  }

  OUTLINED_FUNCTION_30(v3, v4);
  if (v7 ^ v8 | v6)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v0 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v9))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = OUTLINED_FUNCTION_6(v5, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v0 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v7 != v8)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_5(v12);
  if (!v6 & v15)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_41(v16);
      *(v18 + 4) = 40;
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v20 <= 0x28)
    {
      LOWORD(v20) = 40;
    }

    *(v19 + 64) = v20;
    goto LABEL_20;
  }

  __break(1u);
}

void static WK2_DayWeatherConditions.add(sunriseAstronomical:_:)()
{
  OUTLINED_FUNCTION_219();
  v22 = *MEMORY[0x277D85DE8];
  if ((v3 & 0x100000000) != 0)
  {
LABEL_20:
    v21 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_218();
    return;
  }

  OUTLINED_FUNCTION_30(v3, v4);
  if (v7 ^ v8 | v6)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v0 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v9))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = OUTLINED_FUNCTION_6(v5, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v0 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v7 != v8)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_5(v12);
  if (!v6 & v15)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_41(v16);
      OUTLINED_FUNCTION_270();
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_269();
    if (!(!v6 & v15))
    {
      v19 = v20;
    }

    *(v18 + 64) = v19;
    goto LABEL_20;
  }

  __break(1u);
}

void static WK2_DayWeatherConditions.add(sunset:_:)()
{
  OUTLINED_FUNCTION_219();
  v22 = *MEMORY[0x277D85DE8];
  if ((v3 & 0x100000000) != 0)
  {
LABEL_20:
    v21 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_218();
    return;
  }

  OUTLINED_FUNCTION_30(v3, v4);
  if (v7 ^ v8 | v6)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v0 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v9))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = OUTLINED_FUNCTION_6(v5, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v0 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v7 != v8)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_5(v12);
  if (!v6 & v15)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_41(v16);
      *(v18 + 4) = 44;
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v20 <= 0x2C)
    {
      LOWORD(v20) = 44;
    }

    *(v19 + 64) = v20;
    goto LABEL_20;
  }

  __break(1u);
}

void static WK2_DayWeatherConditions.add(sunsetCivil:_:)()
{
  OUTLINED_FUNCTION_219();
  v22 = *MEMORY[0x277D85DE8];
  if ((v3 & 0x100000000) != 0)
  {
LABEL_20:
    v21 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_218();
    return;
  }

  OUTLINED_FUNCTION_30(v3, v4);
  if (v7 ^ v8 | v6)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v0 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v9))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = OUTLINED_FUNCTION_6(v5, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v0 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v7 != v8)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_5(v12);
  if (!v6 & v15)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_41(v16);
      OUTLINED_FUNCTION_268();
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_267();
    if (!(!v6 & v15))
    {
      v19 = v20;
    }

    *(v18 + 64) = v19;
    goto LABEL_20;
  }

  __break(1u);
}

void static WK2_DayWeatherConditions.add(sunsetNautical:_:)()
{
  OUTLINED_FUNCTION_219();
  v22 = *MEMORY[0x277D85DE8];
  if ((v3 & 0x100000000) != 0)
  {
LABEL_20:
    v21 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_218();
    return;
  }

  OUTLINED_FUNCTION_30(v3, v4);
  if (v7 ^ v8 | v6)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v0 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v9))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = OUTLINED_FUNCTION_6(v5, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v0 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v7 != v8)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_5(v12);
  if (!v6 & v15)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_41(v16);
      *(v18 + 4) = 48;
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v20 <= 0x30)
    {
      LOWORD(v20) = 48;
    }

    *(v19 + 64) = v20;
    goto LABEL_20;
  }

  __break(1u);
}

void static WK2_DayWeatherConditions.add(sunsetAstronomical:_:)()
{
  OUTLINED_FUNCTION_219();
  v22 = *MEMORY[0x277D85DE8];
  if ((v3 & 0x100000000) != 0)
  {
LABEL_20:
    v21 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_218();
    return;
  }

  OUTLINED_FUNCTION_30(v3, v4);
  if (v7 ^ v8 | v6)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v0 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v9))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = OUTLINED_FUNCTION_6(v5, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v0 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v7 != v8)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_5(v12);
  if (!v6 & v15)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_41(v16);
      *(v18 + 4) = 50;
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v20 <= 0x32)
    {
      LOWORD(v20) = 50;
    }

    *(v19 + 64) = v20;
    goto LABEL_20;
  }

  __break(1u);
}

void static WK2_DayWeatherConditions.add(temperatureMaxTime:_:)()
{
  OUTLINED_FUNCTION_219();
  v22 = *MEMORY[0x277D85DE8];
  if ((v3 & 0x100000000) != 0)
  {
LABEL_20:
    v21 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_218();
    return;
  }

  OUTLINED_FUNCTION_30(v3, v4);
  if (v7 ^ v8 | v6)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v0 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v9))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = OUTLINED_FUNCTION_6(v5, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v0 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v7 != v8)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_5(v12);
  if (!v6 & v15)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_41(v16);
      *(v18 + 4) = 54;
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v20 <= 0x36)
    {
      LOWORD(v20) = 54;
    }

    *(v19 + 64) = v20;
    goto LABEL_20;
  }

  __break(1u);
}

void static WK2_DayWeatherConditions.add(temperatureMinTime:_:)()
{
  OUTLINED_FUNCTION_219();
  v22 = *MEMORY[0x277D85DE8];
  if ((v3 & 0x100000000) != 0)
  {
LABEL_20:
    v21 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_218();
    return;
  }

  OUTLINED_FUNCTION_30(v3, v4);
  if (v7 ^ v8 | v6)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v0 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v9))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = OUTLINED_FUNCTION_6(v5, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v0 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v7 != v8)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_5(v12);
  if (!v6 & v15)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_41(v16);
      *(v18 + 4) = 58;
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v20 <= 0x3A)
    {
      LOWORD(v20) = 58;
    }

    *(v19 + 64) = v20;
    goto LABEL_20;
  }

  __break(1u);
}

void static WK2_DayWeatherConditions.add(restOfDayForecast:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = *MEMORY[0x277D85DE8];
  v5 = OUTLINED_FUNCTION_120(v4);
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58(v5, v6);
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_38();
  }

  v10 = *(v0 + 16);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v10))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = OUTLINED_FUNCTION_3(v7, v10);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v12, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v13)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v14)
  {
    OUTLINED_FUNCTION_79();
    if (!v14)
    {
LABEL_28:
      v25 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v15 = OUTLINED_FUNCTION_15();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_186(v15);
  }

  OUTLINED_FUNCTION_27();
  if (v8 != v9)
  {
    v17 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v17, v2, v18);
    v16 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v16);
  if (!v14 & v19)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v21 & 1) == 0)
  {
    if (*(v20 + 32))
    {
      OUTLINED_FUNCTION_57(v20);
      *(v22 + 4) = 74;
    }

    OUTLINED_FUNCTION_33(v20, *(v20 + 72), xmmword_272B87CB0);
    if (v24 <= 0x4A)
    {
      LOWORD(v24) = 74;
    }

    *(v23 + 64) = v24;
    goto LABEL_28;
  }

  __break(1u);
}

uint64_t static WK2_DayWeatherConditions.createDayWeatherConditions(_:forecastStart:forecastEnd:conditionCode:humidityMax:humidityMin:maxUvIndex:moonPhase:moonrise:moonset:precipitationAmount:precipitationAmountByTypeVectorOffset:precipitationChance:precipitationType:snowfallAmount:solarMidnight:solarNoon:sunrise:sunriseCivil:sunriseNautical:sunriseAstronomical:sunset:sunsetCivil:sunsetNautical:sunsetAstronomical:temperatureMax:temperatureMaxTime:temperatureMin:temperatureMinTime:windGustSpeedMax:windSpeedAvg:windSpeedMax:visibilityMax:visibilityMin:daytimeForecastOffset:overnightForecastOffset:restOfDayForecastOffset:)@<X0>(_BYTE *a1@<X0>, char *a2@<X3>, char *a3@<X7>, _DWORD *a4@<X8>, unint64_t a5, unint64_t a6, int *a7, uint64_t a8, unsigned __int8 *a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int *a23, int *a24, int *a25)
{
  v25 = *a2;
  v26 = *a3;
  v29 = *a7;
  v30 = *a9;
  v31 = *a23;
  v32 = *a24;
  v33 = *a25;
  static WK2_DayWeatherConditions.startDayWeatherConditions(_:)(a1);
  at = v27;
  static WK2_DayWeatherConditions.add(forecastStart:_:)();
  OUTLINED_FUNCTION_264();
  static WK2_CurrentWeather.add(asOf:_:)();
  static WK2_DayWeatherConditions.add(conditionCode:_:)();
  OUTLINED_FUNCTION_263();
  static WK2_CurrentWeather.add(cloudCoverLowAltPct:_:)();
  static WK2_CurrentWeather.add(cloudCoverMidAltPct:_:)();
  static WK2_CurrentWeather.add(cloudCoverHighAltPct:_:)();
  static WK2_CurrentWeather.add(conditionCode:_:)();
  OUTLINED_FUNCTION_121(HIDWORD(a5) & 1);
  static WK2_DayWeatherConditions.add(moonrise:_:)();
  OUTLINED_FUNCTION_121(HIDWORD(a6) & 1);
  static WK2_DayWeatherConditions.add(moonset:_:)();
  OUTLINED_FUNCTION_139();
  static WK2_CurrentWeather.add(perceivedPrecipitationIntensity:_:)();
  OUTLINED_FUNCTION_159(v29);
  static WK2_Weather.add(marineForecast:_:)();
  static WK2_DayWeatherConditions.add(precipitationChance:_:)();
  static WK2_DayWeatherConditions.add(precipitationType:_:)();
  OUTLINED_FUNCTION_257();
  static WK2_CurrentWeather.add(precipitationAmountNext1h:_:)();
  OUTLINED_FUNCTION_121(HIDWORD(a10) & 1);
  static WK2_DayWeatherConditions.add(solarMidnight:_:)();
  OUTLINED_FUNCTION_35();
  static WK2_DayWeatherConditions.add(solarNoon:_:)();
  OUTLINED_FUNCTION_35();
  static WK2_DayWeatherConditions.add(sunrise:_:)();
  OUTLINED_FUNCTION_35();
  static WK2_DayWeatherConditions.add(sunriseCivil:_:)();
  OUTLINED_FUNCTION_35();
  static WK2_DayWeatherConditions.add(sunriseNautical:_:)();
  OUTLINED_FUNCTION_35();
  static WK2_DayWeatherConditions.add(sunriseAstronomical:_:)();
  OUTLINED_FUNCTION_35();
  static WK2_DayWeatherConditions.add(sunset:_:)();
  OUTLINED_FUNCTION_35();
  static WK2_DayWeatherConditions.add(sunsetCivil:_:)();
  OUTLINED_FUNCTION_35();
  static WK2_DayWeatherConditions.add(sunsetNautical:_:)();
  OUTLINED_FUNCTION_35();
  static WK2_DayWeatherConditions.add(sunsetAstronomical:_:)();
  OUTLINED_FUNCTION_255();
  static WK2_DayWeatherConditions.add(temperatureMax:_:)();
  OUTLINED_FUNCTION_35();
  static WK2_DayWeatherConditions.add(temperatureMaxTime:_:)();
  OUTLINED_FUNCTION_251();
  static WK2_CurrentWeather.add(snowfallAmount6h:_:)();
  OUTLINED_FUNCTION_35();
  static WK2_DayWeatherConditions.add(temperatureMinTime:_:)();
  OUTLINED_FUNCTION_262();
  static WK2_CurrentWeather.add(snowfallAmountNext1h:_:)();
  OUTLINED_FUNCTION_233();
  static WK2_CurrentWeather.add(snowfallAmountNext6h:_:)();
  OUTLINED_FUNCTION_178();
  static WK2_CurrentWeather.add(snowfallAmountNext24h:_:)();
  static WK2_CurrentWeather.add(temperature:_:)();
  OUTLINED_FUNCTION_234();
  static WK2_CurrentWeather.add(temperatureApparent:_:)();
  OUTLINED_FUNCTION_159(v31);
  static WK2_DayWeatherConditions.add(daytimeForecast:_:)();
  OUTLINED_FUNCTION_159(v32);
  static WK2_DayWeatherConditions.add(overnightForecast:_:)();
  OUTLINED_FUNCTION_159(v33);
  static WK2_DayWeatherConditions.add(restOfDayForecast:_:)();
  result = FlatBufferBuilder.endTable(at:)(at);
  *a4 = result;
  return result;
}

void static WK2_HourWeatherConditions.add(pressureTrend:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_140(v5);
  if (!v1)
  {
    OUTLINED_FUNCTION_79();
    if (!v6)
    {
LABEL_22:
      v20 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v7 ^ v8 | v6)
  {
    OUTLINED_FUNCTION_50();
  }

  v9 = *(v3 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v9))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_39();
  if (v7 != v8)
  {
    v10 = OUTLINED_FUNCTION_98();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v9, v11);
  }

  OUTLINED_FUNCTION_40();
  if (v7 ^ v8 | v6)
  {
    v13 = OUTLINED_FUNCTION_99();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v9, v14);
    v12 = *(v0 + 32);
  }

  OUTLINED_FUNCTION_12(v12);
  if (v6)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_41(v15);
      *(v17 + 4) = 32;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0x20)
    {
      LOWORD(v19) = 32;
    }

    *(v18 + 64) = v19;
    goto LABEL_22;
  }

  __break(1u);
}

void static WK2_HourWeatherConditions.add(snowfallAmount:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  sub_272B67768();
}

void static WK2_HourWeatherConditions.add(reserved0:_:)()
{
  OUTLINED_FUNCTION_219();
  v22 = *MEMORY[0x277D85DE8];
  if ((v3 & 0x100000000) != 0)
  {
LABEL_20:
    v21 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_218();
    return;
  }

  OUTLINED_FUNCTION_30(v3, v4);
  if (v7 ^ v8 | v6)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v0 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v9))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = OUTLINED_FUNCTION_6(v5, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v0 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v7 != v8)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_5(v12);
  if (!v6 & v15)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_41(v16);
      OUTLINED_FUNCTION_270();
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_269();
    if (!(!v6 & v15))
    {
      v19 = v20;
    }

    *(v18 + 64) = v19;
    goto LABEL_20;
  }

  __break(1u);
}

uint64_t static WK2_HourWeatherConditions.createHourWeatherConditions(_:forecastStart:cloudCover:cloudCoverLowAltPct:cloudCoverMidAltPct:cloudCoverHighAltPct:conditionCode:daylight:humidity:perceivedPrecipitationIntensity:precipitationAmount:precipitationIntensity:precipitationChance:precipitationType:pressure:pressureTrend:snowfallIntensity:snowfallAmount:temperature:temperatureApparent:reserved0:temperatureDewPoint:uvIndex:visibility:windDirection:windGust:windSpeed:)@<X0>(_BYTE *a1@<X0>, char *a2@<X6>, _DWORD *a3@<X8>, uint64_t a4, char *a5, unsigned __int8 *a6)
{
  v6 = *a2;
  v7 = *a5;
  v10 = *a6;
  static WK2_HourWeatherConditions.startHourWeatherConditions(_:)(a1);
  at = v8;
  OUTLINED_FUNCTION_249();
  static WK2_DayWeatherConditions.add(forecastStart:_:)();
  OUTLINED_FUNCTION_154();
  static WK2_HourWeatherConditions.add(cloudCover:_:)();
  static WK2_CurrentWeather.add(cloudCover:_:)();
  static WK2_CurrentWeather.add(cloudCoverLowAltPct:_:)();
  OUTLINED_FUNCTION_264();
  static WK2_CurrentWeather.add(cloudCoverMidAltPct:_:)();
  static WK2_HourWeatherConditions.add(conditionCode:_:)();
  static WK2_HourWeatherConditions.add(daylight:_:)();
  static WK2_HourWeatherConditions.add(humidity:_:)();
  OUTLINED_FUNCTION_234();
  static WK2_HourWeatherConditions.add(perceivedPrecipitationIntensity:_:)();
  OUTLINED_FUNCTION_233();
  static WK2_CurrentWeather.add(perceivedPrecipitationIntensity:_:)();
  OUTLINED_FUNCTION_178();
  static WK2_CurrentWeather.add(precipitationAmount1h:_:)();
  OUTLINED_FUNCTION_263();
  static WK2_DayWeatherConditions.add(precipitationChance:_:)();
  static WK2_DayWeatherConditions.add(precipitationType:_:)();
  OUTLINED_FUNCTION_139();
  static WK2_CurrentWeather.add(precipitationAmountNext1h:_:)();
  static WK2_HourWeatherConditions.add(pressureTrend:_:)();
  OUTLINED_FUNCTION_257();
  static WK2_CurrentWeather.add(precipitationAmountNext24h:_:)();
  OUTLINED_FUNCTION_255();
  static WK2_HourWeatherConditions.add(snowfallAmount:_:)();
  OUTLINED_FUNCTION_251();
  static WK2_HourWeatherConditions.add(temperature:_:)();
  static WK2_HourWeatherConditions.add(temperatureApparent:_:)();
  OUTLINED_FUNCTION_35();
  static WK2_HourWeatherConditions.add(reserved0:_:)();
  OUTLINED_FUNCTION_262();
  static WK2_HourWeatherConditions.add(temperatureDewPoint:_:)();
  static WK2_HourWeatherConditions.add(uvIndex:_:)();
  static WK2_CurrentWeather.add(precipitationIntensity:_:)();
  static WK2_HourWeatherConditions.add(windDirection:_:)();
  static WK2_DayWeatherConditions.add(temperatureMax:_:)();
  static WK2_CurrentWeather.add(snowfallAmount1h:_:)();
  result = FlatBufferBuilder.endTable(at:)(at);
  *a3 = result;
  return result;
}

void static WK2_HourWeatherConditions.verify<A>(_:at:of:)(int a1, unint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_92(a1, a2, a3, a4, a5, a6, a7, a8, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292);
  if (!v8)
  {
    OUTLINED_FUNCTION_168();
    if (v10 == v11)
    {
      OUTLINED_FUNCTION_131();
      v12 = OUTLINED_FUNCTION_80();
      sub_272B52E68(v12);
      OUTLINED_FUNCTION_34_0(v13, v14, v15, v16, v17, v18, v19, v20, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
      if (v21)
      {
        v22 = OUTLINED_FUNCTION_45(v21, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292);
        sub_272B55EF8(v22);
      }

      if (v9 > 6)
      {
        OUTLINED_FUNCTION_130();
        v23 = OUTLINED_FUNCTION_80();
        sub_272B52E68(v23);
        OUTLINED_FUNCTION_34_0(v24, v25, v26, v27, v28, v29, v30, v31, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
        if (v32)
        {
          v33 = OUTLINED_FUNCTION_46(v32, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292);
          OUTLINED_FUNCTION_174(v33);
        }

        if (v9 > 8)
        {
          OUTLINED_FUNCTION_122();
          v34 = OUTLINED_FUNCTION_80();
          sub_272B52E68(v34);
          OUTLINED_FUNCTION_34_0(v35, v36, v37, v38, v39, v40, v41, v42, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
          if (v43)
          {
            v44 = OUTLINED_FUNCTION_46(v43, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292);
            OUTLINED_FUNCTION_174(v44);
          }

          if (v9 > 0xA)
          {
            OUTLINED_FUNCTION_138();
            v45 = OUTLINED_FUNCTION_80();
            sub_272B52E68(v45);
            OUTLINED_FUNCTION_34_0(v46, v47, v48, v49, v50, v51, v52, v53, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
            if (v54)
            {
              v55 = OUTLINED_FUNCTION_46(v54, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292);
              OUTLINED_FUNCTION_174(v55);
            }

            if (v9 > 0xC)
            {
              OUTLINED_FUNCTION_158();
              v56 = OUTLINED_FUNCTION_80();
              sub_272B52E68(v56);
              OUTLINED_FUNCTION_34_0(v57, v58, v59, v60, v61, v62, v63, v64, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
              if (v65)
              {
                v66 = OUTLINED_FUNCTION_46(v65, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292);
                OUTLINED_FUNCTION_174(v66);
              }

              if (v9 > 0xE)
              {
                OUTLINED_FUNCTION_188();
                v67 = OUTLINED_FUNCTION_80();
                sub_272B52E68(v67);
                OUTLINED_FUNCTION_34_0(v68, v69, v70, v71, v72, v73, v74, v75, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
                if (v76)
                {
                  v77 = OUTLINED_FUNCTION_46(v76, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292);
                  OUTLINED_FUNCTION_174(v77);
                }

                if (v9 > 0x10)
                {
                  OUTLINED_FUNCTION_228();
                  v78 = OUTLINED_FUNCTION_80();
                  sub_272B52E68(v78);
                  OUTLINED_FUNCTION_34_0(v79, v80, v81, v82, v83, v84, v85, v86, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
                  if (v87)
                  {
                    v88 = OUTLINED_FUNCTION_46(v87, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292);
                    OUTLINED_FUNCTION_174(v88);
                  }

                  if (v9 > 0x12)
                  {
                    OUTLINED_FUNCTION_243();
                    v89 = OUTLINED_FUNCTION_80();
                    sub_272B52E68(v89);
                    OUTLINED_FUNCTION_34_0(v90, v91, v92, v93, v94, v95, v96, v97, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
                    if (v98)
                    {
                      v99 = OUTLINED_FUNCTION_46(v98, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292);
                      OUTLINED_FUNCTION_174(v99);
                    }

                    if (v9 > 0x14)
                    {
                      OUTLINED_FUNCTION_242();
                      v100 = OUTLINED_FUNCTION_80();
                      sub_272B52E68(v100);
                      OUTLINED_FUNCTION_34_0(v101, v102, v103, v104, v105, v106, v107, v108, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
                      if (v109)
                      {
                        v110 = OUTLINED_FUNCTION_45(v109, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292);
                        sub_272B55FD0(v110);
                      }

                      if (v9 > 0x16)
                      {
                        OUTLINED_FUNCTION_241();
                        v111 = OUTLINED_FUNCTION_80();
                        sub_272B52E68(v111);
                        OUTLINED_FUNCTION_34_0(v112, v113, v114, v115, v116, v117, v118, v119, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
                        if (v120)
                        {
                          v121 = OUTLINED_FUNCTION_45(v120, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292);
                          sub_272B55FD0(v121);
                        }

                        if (v9 > 0x18)
                        {
                          v122 = OUTLINED_FUNCTION_80();
                          sub_272B52E68(v122);
                          OUTLINED_FUNCTION_34_0(v123, v124, v125, v126, v127, v128, v129, v130, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
                          if (v131)
                          {
                            v132 = OUTLINED_FUNCTION_45(v131, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292);
                            sub_272B55FD0(v132);
                          }

                          if (v9 > 0x1A)
                          {
                            v133 = OUTLINED_FUNCTION_80();
                            sub_272B52E68(v133);
                            OUTLINED_FUNCTION_34_0(v134, v135, v136, v137, v138, v139, v140, v141, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
                            if (v142)
                            {
                              v143 = OUTLINED_FUNCTION_46(v142, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292);
                              OUTLINED_FUNCTION_174(v143);
                            }

                            if (v9 > 0x1C)
                            {
                              OUTLINED_FUNCTION_240();
                              v144 = OUTLINED_FUNCTION_80();
                              sub_272B52E68(v144);
                              OUTLINED_FUNCTION_34_0(v145, v146, v147, v148, v149, v150, v151, v152, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
                              if (v153)
                              {
                                v154 = OUTLINED_FUNCTION_46(v153, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292);
                                OUTLINED_FUNCTION_174(v154);
                              }

                              if (v9 > 0x1E)
                              {
                                OUTLINED_FUNCTION_239();
                                v155 = OUTLINED_FUNCTION_80();
                                sub_272B52E68(v155);
                                OUTLINED_FUNCTION_34_0(v156, v157, v158, v159, v160, v161, v162, v163, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
                                if (v164)
                                {
                                  v165 = OUTLINED_FUNCTION_45(v164, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292);
                                  sub_272B55FD0(v165);
                                }

                                if (v9 > 0x20)
                                {
                                  OUTLINED_FUNCTION_245();
                                  v166 = OUTLINED_FUNCTION_80();
                                  sub_272B52E68(v166);
                                  OUTLINED_FUNCTION_34_0(v167, v168, v169, v170, v171, v172, v173, v174, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
                                  if (v175)
                                  {
                                    v176 = OUTLINED_FUNCTION_46(v175, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292);
                                    OUTLINED_FUNCTION_174(v176);
                                  }

                                  if (v9 > 0x22)
                                  {
                                    OUTLINED_FUNCTION_244();
                                    v177 = OUTLINED_FUNCTION_80();
                                    sub_272B52E68(v177);
                                    OUTLINED_FUNCTION_34_0(v178, v179, v180, v181, v182, v183, v184, v185, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
                                    if (v186)
                                    {
                                      v187 = OUTLINED_FUNCTION_45(v186, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292);
                                      sub_272B55FD0(v187);
                                    }

                                    if (v9 >= 0x25)
                                    {
                                      v188 = OUTLINED_FUNCTION_80();
                                      sub_272B52E68(v188);
                                      OUTLINED_FUNCTION_34_0(v189, v190, v191, v192, v193, v194, v195, v196, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
                                      if (v197)
                                      {
                                        v198 = OUTLINED_FUNCTION_45(v197, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292);
                                        sub_272B55FD0(v198);
                                      }

                                      if (v9 > 0x26)
                                      {
                                        v199 = OUTLINED_FUNCTION_80();
                                        sub_272B52E68(v199);
                                        OUTLINED_FUNCTION_34_0(v200, v201, v202, v203, v204, v205, v206, v207, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
                                        if (v208)
                                        {
                                          v209 = OUTLINED_FUNCTION_45(v208, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292);
                                          sub_272B55FD0(v209);
                                        }

                                        if (v9 > 0x28)
                                        {
                                          v210 = OUTLINED_FUNCTION_80();
                                          sub_272B52E68(v210);
                                          OUTLINED_FUNCTION_34_0(v211, v212, v213, v214, v215, v216, v217, v218, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
                                          if (v219)
                                          {
                                            v220 = OUTLINED_FUNCTION_45(v219, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292);
                                            sub_272B55FD0(v220);
                                          }

                                          if (v9 > 0x2A)
                                          {
                                            v221 = OUTLINED_FUNCTION_80();
                                            sub_272B52E68(v221);
                                            OUTLINED_FUNCTION_34_0(v222, v223, v224, v225, v226, v227, v228, v229, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
                                            if (v230)
                                            {
                                              v231 = OUTLINED_FUNCTION_45(v230, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292);
                                              sub_272B55FD0(v231);
                                            }

                                            if (v9 >= 0x2D)
                                            {
                                              v232 = OUTLINED_FUNCTION_80();
                                              sub_272B52E68(v232);
                                              OUTLINED_FUNCTION_34_0(v233, v234, v235, v236, v237, v238, v239, v240, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
                                              if (v241)
                                              {
                                                v242 = OUTLINED_FUNCTION_45(v241, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292);
                                                sub_272B55FD0(v242);
                                              }

                                              if (v9 > 0x2E)
                                              {
                                                v243 = OUTLINED_FUNCTION_80();
                                                sub_272B52E68(v243);
                                                OUTLINED_FUNCTION_34_0(v244, v245, v246, v247, v248, v249, v250, v251, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
                                                if (v252)
                                                {
                                                  v253 = OUTLINED_FUNCTION_46(v252, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292);
                                                  OUTLINED_FUNCTION_174(v253);
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    OUTLINED_FUNCTION_230();
    OUTLINED_FUNCTION_86();
    sub_272B56000(v254, v255, v256, v257);
    OUTLINED_FUNCTION_160();
    OUTLINED_FUNCTION_86();
    sub_272B56308(v258, v259, v260, v261);
    OUTLINED_FUNCTION_229();
    OUTLINED_FUNCTION_86();
    sub_272B56000(v262, v263, v264, v265);
    OUTLINED_FUNCTION_161();
    OUTLINED_FUNCTION_86();
    sub_272B56000(v266, v267, v268, v269);
    OUTLINED_FUNCTION_109();
    if (v11)
    {
      __break(1u);
    }

    else
    {
      v299 = v278;
      OUTLINED_FUNCTION_93(v270, v271, v272, v273, v274, v275, v276, v277, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292);
      sub_272B522C4(&v279);
    }
  }
}

void _s11WeatherData20WK2_NextHourForecastV10hasMinutesSbvg_0()
{
  OUTLINED_FUNCTION_181();
  if (v2)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v1) < 0xFu)
    {
      OUTLINED_FUNCTION_32_0();
      return;
    }

    v2 = __OFADD__(v1, 14);
    v3 = v1 + 14;
    if (!v2)
    {
      v4 = *(v0 + v3) != 0;
      return;
    }
  }

  __break(1u);
}

void static WK2_ForecastCondition.add(endTime:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  sub_272B64424();
}

void static WK2_ForecastCondition.createForecastCondition(_:startTime:endTime:forecastToken:beginCondition:endCondition:parametersVectorOffset:)()
{
  OUTLINED_FUNCTION_198();
  v1 = v0;
  v3 = *v2;
  v5 = *v4;
  v7 = *v6;
  v9 = *v8;
  v10 = static WK2_LocationInfo.startLocationInfo(_:)();
  static WK2_DayWeatherConditions.add(forecastStart:_:)();
  OUTLINED_FUNCTION_279();
  static WK2_DayWeatherConditions.add(conditionCode:_:)();
  static WK2_TrendDeviation.add(minTemperatureChange:_:)();
  static WK2_TrendDeviation.add(dayPrecipitationChange:_:)();
  static WK2_Weather.add(news:_:)();
  *v1 = FlatBufferBuilder.endTable(at:)(v10);
  OUTLINED_FUNCTION_197();
}

void WK2_ForecastPeriodSummary.condition.getter()
{
  OUTLINED_FUNCTION_13_0();
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + v3) < 9u)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v4 = __OFADD__(v3, 8);
  v5 = v3 + 8;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = *(v1 + v5);
  if (!v6)
  {
    goto LABEL_7;
  }

  if (!__OFADD__(v6, v2))
  {
    v7 = OUTLINED_FUNCTION_124(v1);
    WK2_PrecipitationType.init(rawValue:)(v7);
    OUTLINED_FUNCTION_164();
LABEL_8:
    *v0 = v8;
    return;
  }

LABEL_11:
  __break(1u);
}

void _s11WeatherData22WK2_PrecipitationRangeV12expectedSnowSfvg_0()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0xDu)
  {
    return;
  }

  v3 = __OFADD__(v2, 12);
  v4 = v2 + 12;
  if (v3)
  {
    goto LABEL_9;
  }

  v5 = *(v0 + v4);
  if (!v5)
  {
    return;
  }

  v3 = __OFADD__(v5, v1);
  v6 = v5 + v1;
  if (v3)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = *(v0 + v6);
}

void _s11WeatherData14WK2_TideEventsV05startdE0ys6UInt32VAA17FlatBufferBuilderVzFZ_0(_BYTE *a1)
{
  OUTLINED_FUNCTION_25(a1);
  OUTLINED_FUNCTION_141();
  if (v3 != v4)
  {
    if (*(v2 + 48))
    {
LABEL_12:
      __break(1u);
      return;
    }

    if (*(v2 + 32))
    {
      OUTLINED_FUNCTION_209();
    }

    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_68(v5, v5 + 40);
  }

  v6 = *(v1 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(v6))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }
}

void sub_272B64424()
{
  OUTLINED_FUNCTION_219();
  v22 = *MEMORY[0x277D85DE8];
  if ((v3 & 0x100000000) != 0)
  {
LABEL_20:
    v21 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_218();
    return;
  }

  OUTLINED_FUNCTION_30(v3, v4);
  if (v7 ^ v8 | v6)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v0 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v9))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = OUTLINED_FUNCTION_6(v5, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v0 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v7 != v8)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_5(v12);
  if (!v6 & v15)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_41(v16);
      OUTLINED_FUNCTION_235();
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_284();
    if (!(!v6 & v15))
    {
      v19 = v20;
    }

    *(v18 + 64) = v19;
    goto LABEL_20;
  }

  __break(1u);
}

void sub_272B64510()
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_97();
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_23:
      v20 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_225();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v0 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v0 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v2, v13);
    v11 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_48(v15);
      OUTLINED_FUNCTION_211();
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_238();
    if (!(!v4 & v14))
    {
      v18 = v19;
    }

    *(v17 + 64) = v18;
    goto LABEL_23;
  }

  __break(1u);
}

uint64_t static WK2_ForecastPeriodSummary.createForecastPeriodSummary(_:startTime:endTime:condition:precipitationChance:precipitationIntensity:)@<X0>(char *a1@<X3>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = static WK2_TideEvents.startTideEvents(_:)();
  static WK2_DayWeatherConditions.add(forecastStart:_:)();
  OUTLINED_FUNCTION_279();
  static WK2_DayWeatherConditions.add(conditionCode:_:)();
  static WK2_CurrentWeather.add(cloudCoverLowAltPct:_:)();
  static WK2_PrecipitationRange.add(expectedSnow:_:)();
  result = FlatBufferBuilder.endTable(at:)(v4);
  *a2 = result;
  return result;
}

void sub_272B646B8(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    v3 = __src[2];
    if (__src[2] <= 4)
    {
      goto LABEL_48;
    }

    v4 = __src[1] + 4;
    v5 = LOBYTE(__src[3]);
    if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
    {
      Verifier.rangeInBuffer(position:size:)(__src[1] + 4, 2);
      if (v6)
      {
        goto LABEL_50;
      }

      v7 = *(__src[8] + 24);
      v8 = *(v7 + v4);
      if (*(v7 + v4))
      {
        v4 = __src[0] + v8;
        if (((v7 + LOBYTE(__src[0]) + v8) & 3) != 0)
        {
          v9 = v5;
        }

        else
        {
          v9 = 0;
        }

        if (v9 == 1)
        {
          goto LABEL_11;
        }

        Verifier.rangeInBuffer(position:size:)(__src[0] + v8, 4);
        if (v12)
        {
          goto LABEL_50;
        }
      }

      if (v3 < 7)
      {
        goto LABEL_48;
      }

      v4 = __src[1] + 6;
      v13 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
      {
        Verifier.rangeInBuffer(position:size:)(__src[1] + 6, 2);
        if (v14)
        {
          goto LABEL_50;
        }

        v15 = *(__src[8] + 24);
        v16 = *(v15 + v4);
        if (*(v15 + v4))
        {
          v4 = __src[0] + v16;
          if (((v15 + LOBYTE(__src[0]) + v16) & 3) != 0)
          {
            v17 = v13;
          }

          else
          {
            v17 = 0;
          }

          if (v17 == 1)
          {
LABEL_11:
            *v35 = MEMORY[0x277D84CC0];
            v10 = &qword_2808A3170;
            v11 = &unk_272B89910;
LABEL_46:
            __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
            v28 = sub_272B87730();
            v30 = v29;
            sub_272B5C86C();
            swift_allocError();
            *v31 = v4;
            *(v31 + 8) = v28;
            *(v31 + 16) = v30;
            v32 = *&v35[32];
            v33 = *&v35[16];
            *(v31 + 24) = *v35;
            *(v31 + 40) = v33;
            *(v31 + 56) = v32;
            *(v31 + 64) = 0;
            swift_willThrow();
            goto LABEL_50;
          }

          Verifier.rangeInBuffer(position:size:)(__src[0] + v16, 4);
          if (v18)
          {
            goto LABEL_50;
          }
        }

        if (v3 < 9)
        {
          goto LABEL_48;
        }

        v4 = __src[1] + 8;
        if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
        {
          Verifier.rangeInBuffer(position:size:)(__src[1] + 8, 2);
          if (v19)
          {
            goto LABEL_50;
          }

          if (*(*(__src[8] + 24) + v4))
          {
            Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v4), 1);
            if (v20)
            {
              goto LABEL_50;
            }
          }

          if (v3 < 0xB)
          {
            goto LABEL_48;
          }

          v4 = __src[1] + 10;
          if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
          {
            Verifier.rangeInBuffer(position:size:)(__src[1] + 10, 2);
            if (v21)
            {
              goto LABEL_50;
            }

            if (*(*(__src[8] + 24) + v4))
            {
              Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v4), 1);
              if (v22)
              {
                goto LABEL_50;
              }
            }

            if (v3 < 0xD)
            {
              goto LABEL_48;
            }

            v4 = __src[1] + 12;
            v23 = LOBYTE(__src[3]);
            if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
            {
              Verifier.rangeInBuffer(position:size:)(__src[1] + 12, 2);
              if (!v24)
              {
                v25 = *(__src[8] + 24);
                v26 = *(v25 + v4);
                if (*(v25 + v4))
                {
                  v4 = __src[0] + v26;
                  if (((v25 + LOBYTE(__src[0]) + v26) & 3) != 0)
                  {
                    v27 = v23;
                  }

                  else
                  {
                    v27 = 0;
                  }

                  if (v27 == 1)
                  {
                    *v35 = MEMORY[0x277D83A90];
                    v10 = &unk_2808A3178;
                    v11 = &unk_272B87CD0;
                    goto LABEL_46;
                  }

                  Verifier.rangeInBuffer(position:size:)(__src[0] + v26, 4);
                  if (v34)
                  {
                    goto LABEL_50;
                  }
                }

LABEL_48:
                if (__OFSUB__(__src[7], 1))
                {
                  __break(1u);
                  return;
                }

                --__src[7];
              }

LABEL_50:
              memcpy(v35, __src, sizeof(v35));
              sub_272B522C4(v35);
              return;
            }
          }
        }
      }
    }

    *v35 = MEMORY[0x277D84C58];
    v10 = &qword_2808A3160;
    v11 = &unk_272B87CC0;
    goto LABEL_46;
  }
}

uint64_t static WK2_ForecastMinute.createForecastMinute(_:startTime:precipitationChance:precipitationIntensity:perceivedPrecipitationIntensity:)()
{
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_266();
  static WK2_WeatherChanges.startWeatherChanges(_:)(v1);
  static WK2_DayWeatherConditions.add(forecastStart:_:)();
  static WK2_HourWeatherConditions.add(cloudCover:_:)();
  static WK2_ForecastMinute.add(precipitationIntensity:_:)();
  static WK2_ForecastMinute.add(perceivedPrecipitationIntensity:_:)();
  result = OUTLINED_FUNCTION_283();
  *v0 = result;
  return result;
}

void sub_272B64F7C()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 5u)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 4);
    v4 = v2 + 4;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        if (!__OFADD__(v5, v1))
        {
          OUTLINED_FUNCTION_102(v0);
          return;
        }

        goto LABEL_10;
      }

LABEL_7:
      OUTLINED_FUNCTION_32_0();
      return;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

void WK2_NewsPlacement.placement.getter()
{
  OUTLINED_FUNCTION_13_0();
  if (v4)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*(v1 + v3) < 9u)
  {
LABEL_9:
    v8 = 0;
LABEL_10:
    *v0 = v8;
    return;
  }

  v4 = __OFADD__(v3, 8);
  v5 = v3 + 8;
  if (v4)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = *(v1 + v5);
  if (!v6)
  {
    goto LABEL_9;
  }

  if (!__OFADD__(v6, v2))
  {
    v7 = OUTLINED_FUNCTION_124(v1);
    WK2_Placement.init(rawValue:)(v7);
    v8 = v9;
    if (v9 == 15)
    {
      v8 = 0;
    }

    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
}

void static WK2_NewsPlacement.add(priority:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  sub_272B6509C();
}

void sub_272B6509C()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_106();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_125();
  if (v3)
  {
    OUTLINED_FUNCTION_79();
    if (!v3)
    {
LABEL_23:
      v18 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v4 ^ v5 | v3)
  {
    OUTLINED_FUNCTION_50();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v6))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_44();
  if (v4 != v5)
  {
    v7 = OUTLINED_FUNCTION_98();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v6, v8);
  }

  OUTLINED_FUNCTION_29();
  if (v4 ^ v5 | v3)
  {
    v10 = OUTLINED_FUNCTION_99();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v6, v11);
    v9 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_8(v9);
  if (v3)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v13 & 1) == 0)
  {
    if (*(v12 + 32))
    {
      OUTLINED_FUNCTION_41(v12);
      OUTLINED_FUNCTION_216();
    }

    OUTLINED_FUNCTION_33(v12, *(v12 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_206();
    if (!(!v3 & v17))
    {
      v15 = v16;
    }

    *(v14 + 64) = v15;
    goto LABEL_23;
  }

  __break(1u);
}

void sub_272B65204(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  v3 = v2;
  if (!v2)
  {
    v4 = __src[2];
    if (__src[2] >= 5)
    {
      v5 = __src[1] + 4;
      if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v5) & 1) != 0)
      {
        goto LABEL_17;
      }

      Verifier.rangeInBuffer(position:size:)(__src[1] + 4, 2);
      v3 = v6;
      if (v6)
      {
        goto LABEL_18;
      }

      if (*(*(__src[8] + 24) + v5))
      {
        Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v5), 1);
        v3 = v7;
        if (v7)
        {
          goto LABEL_18;
        }
      }
    }

    sub_272B53EA4(6, 0x73656C6369747261, 0xE800000000000000, 1, sub_272B68FE8);
    if (v3)
    {
      goto LABEL_18;
    }

    if (v4 < 9)
    {
LABEL_15:
      if (__OFSUB__(__src[7], 1))
      {
        __break(1u);
        return;
      }

      --__src[7];
      goto LABEL_18;
    }

    v5 = __src[1] + 8;
    if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v5) & 1) == 0)
    {
      Verifier.rangeInBuffer(position:size:)(__src[1] + 8, 2);
      if (!v8)
      {
        if (!*(*(__src[8] + 24) + v5))
        {
          goto LABEL_15;
        }

        Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v5), 1);
        if (!v9)
        {
          goto LABEL_15;
        }
      }

LABEL_18:
      memcpy(v16, __src, sizeof(v16));
      sub_272B522C4(v16);
      return;
    }

LABEL_17:
    *v16 = MEMORY[0x277D84C58];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3160, &unk_272B87CC0);
    v10 = sub_272B87730();
    v12 = v11;
    sub_272B5C86C();
    swift_allocError();
    *v13 = v5;
    *(v13 + 8) = v10;
    *(v13 + 16) = v12;
    v14 = *&v16[32];
    v15 = *&v16[16];
    *(v13 + 24) = *v16;
    *(v13 + 40) = v15;
    *(v13 + 56) = v14;
    *(v13 + 64) = 0;
    swift_willThrow();
    goto LABEL_18;
  }
}

void static WK2_NewsPlacement.verify<A>(_:at:of:)(int a1, unint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_92(a1, a2, a3, a4, a5, a6, a7, a8, v76, *(&v76 + 1), v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);
  if (!v8)
  {
    OUTLINED_FUNCTION_246();
    if (v10 == v11)
    {
      OUTLINED_FUNCTION_70();
      if (v20)
      {
        OUTLINED_FUNCTION_42(v12, v13, v14, v15, v16, v17, v18, v19, v76, *(&v76 + 1), v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
        if (v21)
        {
          goto LABEL_16;
        }
      }

      OUTLINED_FUNCTION_76();
      OUTLINED_FUNCTION_34_0(v22, v23, v24, v25, v26, v27, v28, v29, v76, *(&v76 + 1), v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
      if (v30)
      {
        v31 = OUTLINED_FUNCTION_47(v30, v76, *(&v76 + 1), v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);
        OUTLINED_FUNCTION_174(v31);
      }
    }

    OUTLINED_FUNCTION_134();
    OUTLINED_FUNCTION_64();
    sub_272B53EA4(v32, v33, v34, v35, v36);
    if (v9 < 9)
    {
LABEL_14:
      OUTLINED_FUNCTION_109();
      if (v11)
      {
        __break(1u);
        return;
      }

      v95 = v64;
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_73();
    if (!v20 || (OUTLINED_FUNCTION_42(v37, v38, v39, v40, v41, v42, v43, v44, v76, *(&v76 + 1), v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96), (v45 & 1) == 0))
    {
      OUTLINED_FUNCTION_61(v37, v38, v39, v40, v41, v42, v43, v44, v76, *(&v76 + 1), v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);
      OUTLINED_FUNCTION_34_0(v46, v47, v48, v49, v50, v51, v52, v53, v76, *(&v76 + 1), v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
      if (v54)
      {
        v55 = OUTLINED_FUNCTION_46(v54, v76, *(&v76 + 1), v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);
        OUTLINED_FUNCTION_174(v55);
      }

      goto LABEL_14;
    }

LABEL_16:
    *&v76 = MEMORY[0x277D84C58];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3160, &unk_272B87CC0);
    OUTLINED_FUNCTION_195();
    OUTLINED_FUNCTION_185();
    v65 = OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_113(v65, v66);
    OUTLINED_FUNCTION_9_0(v67, v68, v69, v70, v71, v72, v73, v74, v76, v75, v77);
    v56 = swift_willThrow();
LABEL_17:
    OUTLINED_FUNCTION_93(v56, v57, v58, v59, v60, v61, v62, v63, v76, *(&v76 + 1), v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);
    sub_272B522C4(&v76);
  }
}

void WK2_TrendDeviation.maxTemperatureChange.getter()
{
  OUTLINED_FUNCTION_194();
  if (v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(v1 + v3) < 9u)
  {
LABEL_7:
    OUTLINED_FUNCTION_89(v0);
    return;
  }

  v4 = __OFADD__(v3, 8);
  v5 = v3 + 8;
  if (v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(v1 + v5);
  if (!v6)
  {
    goto LABEL_7;
  }

  v4 = __OFADD__(v6, v2);
  v7 = v6 + v2;
  if (!v4)
  {
    v8 = *(v1 + v7) == 1;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

void WK2_TrendDeviation.minTemperatureChange.getter()
{
  OUTLINED_FUNCTION_194();
  if (v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(v1 + v3) < 0xBu)
  {
LABEL_7:
    OUTLINED_FUNCTION_89(v0);
    return;
  }

  v4 = __OFADD__(v3, 10);
  v5 = v3 + 10;
  if (v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(v1 + v5);
  if (!v6)
  {
    goto LABEL_7;
  }

  v4 = __OFADD__(v6, v2);
  v7 = v6 + v2;
  if (!v4)
  {
    v8 = *(v1 + v7) == 1;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

void WK2_TrendDeviation.dayPrecipitationChange.getter()
{
  OUTLINED_FUNCTION_194();
  if (v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(v1 + v3) < 0xDu)
  {
LABEL_7:
    OUTLINED_FUNCTION_89(v0);
    return;
  }

  v4 = __OFADD__(v3, 12);
  v5 = v3 + 12;
  if (v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(v1 + v5);
  if (!v6)
  {
    goto LABEL_7;
  }

  v4 = __OFADD__(v6, v2);
  v7 = v6 + v2;
  if (!v4)
  {
    v8 = *(v1 + v7) == 1;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

void WK2_TrendDeviation.nightPrecipitationChange.getter()
{
  OUTLINED_FUNCTION_194();
  if (v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(v1 + v3) < 0xFu)
  {
LABEL_7:
    OUTLINED_FUNCTION_89(v0);
    return;
  }

  v4 = __OFADD__(v3, 14);
  v5 = v3 + 14;
  if (v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(v1 + v5);
  if (!v6)
  {
    goto LABEL_7;
  }

  v4 = __OFADD__(v6, v2);
  v7 = v6 + v2;
  if (!v4)
  {
    v8 = *(v1 + v7) == 1;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

void static WK2_TrendDeviation.createTrendDeviation(_:forecastStart:forecastEnd:maxTemperatureChange:minTemperatureChange:dayPrecipitationChange:nightPrecipitationChange:)()
{
  OUTLINED_FUNCTION_198();
  OUTLINED_FUNCTION_266();
  v2 = *v1;
  v4 = *v3;
  v6 = *v5;
  v8 = *v7;
  static WK2_LocationInfo.startLocationInfo(_:)();
  static WK2_DayWeatherConditions.add(forecastStart:_:)();
  static WK2_CurrentWeather.add(asOf:_:)();
  static WK2_DayWeatherConditions.add(conditionCode:_:)();
  static WK2_TrendDeviation.add(minTemperatureChange:_:)();
  static WK2_TrendDeviation.add(dayPrecipitationChange:_:)();
  static WK2_HourWeatherConditions.add(conditionCode:_:)();
  *v0 = OUTLINED_FUNCTION_283();
  OUTLINED_FUNCTION_197();
}

void sub_272B65800(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    v3 = __src[2];
    if (__src[2] <= 4)
    {
      goto LABEL_47;
    }

    v4 = __src[1] + 4;
    v5 = LOBYTE(__src[3]);
    if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
    {
      Verifier.rangeInBuffer(position:size:)(__src[1] + 4, 2);
      if (v6)
      {
        goto LABEL_51;
      }

      v7 = *(__src[8] + 24);
      v8 = *(v7 + v4);
      if (*(v7 + v4))
      {
        v4 = __src[0] + v8;
        if (((v7 + LOBYTE(__src[0]) + v8) & 3) != 0)
        {
          v9 = v5;
        }

        else
        {
          v9 = 0;
        }

        if (v9 == 1)
        {
          goto LABEL_11;
        }

        Verifier.rangeInBuffer(position:size:)(__src[0] + v8, 4);
        if (v12)
        {
          goto LABEL_51;
        }
      }

      if (v3 < 7)
      {
        goto LABEL_47;
      }

      v4 = __src[1] + 6;
      v13 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v4) & 1) != 0)
      {
        goto LABEL_49;
      }

      Verifier.rangeInBuffer(position:size:)(__src[1] + 6, 2);
      if (v14)
      {
        goto LABEL_51;
      }

      v15 = *(__src[8] + 24);
      v16 = *(v15 + v4);
      if (*(v15 + v4))
      {
        v4 = __src[0] + v16;
        if (((v15 + LOBYTE(__src[0]) + v16) & 3) != 0)
        {
          v17 = v13;
        }

        else
        {
          v17 = 0;
        }

        if (v17 == 1)
        {
LABEL_11:
          *v33 = MEMORY[0x277D84CC0];
          v10 = &qword_2808A3170;
          v11 = &unk_272B89910;
LABEL_50:
          __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
          v27 = sub_272B87730();
          v29 = v28;
          sub_272B5C86C();
          swift_allocError();
          *v30 = v4;
          *(v30 + 8) = v27;
          *(v30 + 16) = v29;
          v31 = *&v33[32];
          v32 = *&v33[16];
          *(v30 + 24) = *v33;
          *(v30 + 40) = v32;
          *(v30 + 56) = v31;
          *(v30 + 64) = 0;
          swift_willThrow();
          goto LABEL_51;
        }

        Verifier.rangeInBuffer(position:size:)(__src[0] + v16, 4);
        if (v18)
        {
LABEL_51:
          memcpy(v33, __src, sizeof(v33));
          sub_272B522C4(v33);
          return;
        }
      }

      if (v3 < 9)
      {
        goto LABEL_47;
      }

      v4 = __src[1] + 8;
      if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
      {
        Verifier.rangeInBuffer(position:size:)(__src[1] + 8, 2);
        if (v19)
        {
          goto LABEL_51;
        }

        if (*(*(__src[8] + 24) + v4))
        {
          Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v4), 1);
          if (v20)
          {
            goto LABEL_51;
          }
        }

        if (v3 < 0xB)
        {
          goto LABEL_47;
        }

        v4 = __src[1] + 10;
        if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
        {
          Verifier.rangeInBuffer(position:size:)(__src[1] + 10, 2);
          if (v21)
          {
            goto LABEL_51;
          }

          if (*(*(__src[8] + 24) + v4))
          {
            Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v4), 1);
            if (v22)
            {
              goto LABEL_51;
            }
          }

          if (v3 < 0xD)
          {
            goto LABEL_47;
          }

          v4 = __src[1] + 12;
          if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
          {
            Verifier.rangeInBuffer(position:size:)(__src[1] + 12, 2);
            if (v23)
            {
              goto LABEL_51;
            }

            if (*(*(__src[8] + 24) + v4))
            {
              Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v4), 1);
              if (v24)
              {
                goto LABEL_51;
              }
            }

            if (v3 < 0xF)
            {
              goto LABEL_47;
            }

            v4 = __src[1] + 14;
            if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
            {
              Verifier.rangeInBuffer(position:size:)(__src[1] + 14, 2);
              if (v25)
              {
                goto LABEL_51;
              }

              if (*(*(__src[8] + 24) + v4))
              {
                Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v4), 1);
                if (v26)
                {
                  goto LABEL_51;
                }
              }

LABEL_47:
              if (__OFSUB__(__src[7], 1))
              {
                __break(1u);
                return;
              }

              --__src[7];
              goto LABEL_51;
            }
          }
        }
      }
    }

LABEL_49:
    *v33 = MEMORY[0x277D84C58];
    v10 = &qword_2808A3160;
    v11 = &unk_272B87CC0;
    goto LABEL_50;
  }
}

void WK2_HistoricalComparison.condition.getter()
{
  OUTLINED_FUNCTION_194();
  if (v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(v1 + v3) < 5u)
  {
LABEL_7:
    OUTLINED_FUNCTION_89(v0);
    return;
  }

  v4 = __OFADD__(v3, 4);
  v5 = v3 + 4;
  if (v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(v1 + v5);
  if (!v6)
  {
    goto LABEL_7;
  }

  v4 = __OFADD__(v6, v2);
  v7 = v6 + v2;
  if (!v4)
  {
    *(v1 + v7);
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

void WK2_HistoricalComparison.deviation.getter()
{
  OUTLINED_FUNCTION_194();
  if (v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(v1 + v3) < 0xBu)
  {
LABEL_7:
    OUTLINED_FUNCTION_89(v0);
    return;
  }

  v4 = __OFADD__(v3, 10);
  v5 = v3 + 10;
  if (v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(v1 + v5);
  if (!v6)
  {
    goto LABEL_7;
  }

  v4 = __OFADD__(v6, v2);
  v7 = v6 + v2;
  if (!v4)
  {
    *(v1 + v7);
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

void WK2_HistoricalComparison.baselineStartDate.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 0xFu)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 14);
    v4 = v2 + 14;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        if (!__OFADD__(v5, v1))
        {
          OUTLINED_FUNCTION_112(v0);
          return;
        }

        goto LABEL_10;
      }

LABEL_7:
      OUTLINED_FUNCTION_32_0();
      return;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

void static WK2_HistoricalComparison.add(baselineType:_:)(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(a2 + 57) != 1)
  {
LABEL_18:
    v19 = *MEMORY[0x277D85DE8];
    return;
  }

  if (*(a2 + 64) <= 0)
  {
    OUTLINED_FUNCTION_50();
  }

  v4 = *(a2 + 16);
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (HIDWORD(v4))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_39();
  if (v5 != v6)
  {
    v7 = OUTLINED_FUNCTION_98();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v4, v8);
  }

  *(a2 + 16) = v4;
  v9 = *(v2 + 32);
  if (v9 <= v4)
  {
    v10 = OUTLINED_FUNCTION_99();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v4, v11);
    v9 = *(v2 + 32);
  }

  *(*(v2 + 24) + v9 + ~v4) = 0;
  *(a2 + 16) = v4 + 1;
  if (v4 == 0xFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v13 & 1) == 0)
  {
    if (*(v12 + 32))
    {
      OUTLINED_FUNCTION_48(v12);
      OUTLINED_FUNCTION_211();
    }

    OUTLINED_FUNCTION_33(v12, *(v12 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_238();
    if (!(!v18 & v17))
    {
      v15 = v16;
    }

    *(v14 + 64) = v15;
    goto LABEL_18;
  }

  __break(1u);
}

void static WK2_HistoricalComparison.add(baselineStartDate:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_106();
  v23 = *MEMORY[0x277D85DE8];
  if (!v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v5)
    {
LABEL_22:
      v22 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v7 ^ v8 | v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v0 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v9))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v10 = OUTLINED_FUNCTION_6(v6, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v0 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v7 != v8)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v3, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_43(v12);
  *(v15 - 4) = v2;
  OUTLINED_FUNCTION_55();
  if (!v5 & v16)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v18 & 1) == 0)
  {
    if (*(v17 + 32))
    {
      OUTLINED_FUNCTION_41(v17);
      OUTLINED_FUNCTION_261();
    }

    OUTLINED_FUNCTION_33(v17, *(v17 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_259();
    if (!(!v5 & v16))
    {
      v20 = v21;
    }

    *(v19 + 64) = v20;
    goto LABEL_22;
  }

  __break(1u);
}

void static WK2_HistoricalComparison.createHistoricalComparison(_:condition:currentValue:baselineValue:deviation:baselineType:baselineStartDate:)()
{
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_253();
  v1 = v0;
  v3 = v2;
  v5 = *v4;
  v7 = *v6;
  v8 = static WK2_LocationInfo.startLocationInfo(_:)();
  OUTLINED_FUNCTION_223();
  static WK2_Pollutant.add(pollutantType:_:)();
  OUTLINED_FUNCTION_178();
  static WK2_HourTide.add(height:_:)();
  OUTLINED_FUNCTION_139();
  static WK2_ForecastMinute.add(precipitationIntensity:_:)();
  static WK2_TrendDeviation.add(minTemperatureChange:_:)();
  static WK2_HistoricalComparison.add(baselineType:_:)(v9, v1);
  OUTLINED_FUNCTION_154();
  static WK2_HistoricalComparison.add(baselineStartDate:_:)();
  *v3 = FlatBufferBuilder.endTable(at:)(v8);
  OUTLINED_FUNCTION_281();
}

void sub_272B66250(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    v3 = __src[2];
    if (__src[2] < 5)
    {
      goto LABEL_54;
    }

    v4 = __src[1] + 4;
    if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
    {
      Verifier.rangeInBuffer(position:size:)(__src[1] + 4, 2);
      if (v5)
      {
        goto LABEL_56;
      }

      if (*(*(__src[8] + 24) + v4))
      {
        Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v4), 1);
        if (v6)
        {
          goto LABEL_56;
        }
      }

      if (v3 <= 6)
      {
        goto LABEL_54;
      }

      v4 = __src[1] + 6;
      v7 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
      {
        Verifier.rangeInBuffer(position:size:)(__src[1] + 6, 2);
        if (v8)
        {
          goto LABEL_56;
        }

        v9 = *(__src[8] + 24);
        v10 = *(v9 + v4);
        if (*(v9 + v4))
        {
          v4 = __src[0] + v10;
          if (((v9 + LOBYTE(__src[0]) + v10) & 3) != 0)
          {
            v11 = v7;
          }

          else
          {
            v11 = 0;
          }

          if (v11 == 1)
          {
            goto LABEL_17;
          }

          Verifier.rangeInBuffer(position:size:)(__src[0] + v10, 4);
          if (v14)
          {
            goto LABEL_56;
          }
        }

        if (v3 <= 8)
        {
          goto LABEL_54;
        }

        v4 = __src[1] + 8;
        v15 = LOBYTE(__src[3]);
        if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
        {
          Verifier.rangeInBuffer(position:size:)(__src[1] + 8, 2);
          if (v16)
          {
            goto LABEL_56;
          }

          v17 = *(__src[8] + 24);
          v18 = *(v17 + v4);
          if (*(v17 + v4))
          {
            v4 = __src[0] + v18;
            if (((v17 + LOBYTE(__src[0]) + v18) & 3) != 0)
            {
              v19 = v15;
            }

            else
            {
              v19 = 0;
            }

            if (v19 == 1)
            {
LABEL_17:
              *v37 = MEMORY[0x277D83A90];
              v12 = &unk_2808A3178;
              v13 = &unk_272B87CD0;
LABEL_52:
              __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
              v30 = sub_272B87730();
              v32 = v31;
              sub_272B5C86C();
              swift_allocError();
              *v33 = v4;
              *(v33 + 8) = v30;
              *(v33 + 16) = v32;
              v34 = *&v37[32];
              v35 = *&v37[16];
              *(v33 + 24) = *v37;
              *(v33 + 40) = v35;
              *(v33 + 56) = v34;
              *(v33 + 64) = 0;
              swift_willThrow();
              goto LABEL_56;
            }

            Verifier.rangeInBuffer(position:size:)(__src[0] + v18, 4);
            if (v20)
            {
              goto LABEL_56;
            }
          }

          if (v3 <= 0xA)
          {
            goto LABEL_54;
          }

          v4 = __src[1] + 10;
          if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
          {
            Verifier.rangeInBuffer(position:size:)(__src[1] + 10, 2);
            if (v21)
            {
              goto LABEL_56;
            }

            if (*(*(__src[8] + 24) + v4))
            {
              Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v4), 1);
              if (v22)
              {
                goto LABEL_56;
              }
            }

            if (v3 <= 0xC)
            {
              goto LABEL_54;
            }

            v4 = __src[1] + 12;
            if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
            {
              Verifier.rangeInBuffer(position:size:)(__src[1] + 12, 2);
              if (v23)
              {
                goto LABEL_56;
              }

              if (*(*(__src[8] + 24) + v4))
              {
                Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v4), 0);
                if (v24)
                {
                  goto LABEL_56;
                }
              }

              if (v3 <= 0xE)
              {
                goto LABEL_54;
              }

              v4 = __src[1] + 14;
              v25 = LOBYTE(__src[3]);
              if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
              {
                Verifier.rangeInBuffer(position:size:)(__src[1] + 14, 2);
                if (!v26)
                {
                  v27 = *(__src[8] + 24);
                  v28 = *(v27 + v4);
                  if (*(v27 + v4))
                  {
                    v4 = __src[0] + v28;
                    if (((v27 + LOBYTE(__src[0]) + v28) & 3) != 0)
                    {
                      v29 = v25;
                    }

                    else
                    {
                      v29 = 0;
                    }

                    if (v29 == 1)
                    {
                      *v37 = MEMORY[0x277D84CC0];
                      v12 = &qword_2808A3170;
                      v13 = &unk_272B89910;
                      goto LABEL_52;
                    }

                    Verifier.rangeInBuffer(position:size:)(__src[0] + v28, 4);
                    if (v36)
                    {
                      goto LABEL_56;
                    }
                  }

LABEL_54:
                  if (__OFSUB__(__src[7], 1))
                  {
                    __break(1u);
                    return;
                  }

                  --__src[7];
                }

LABEL_56:
                memcpy(v37, __src, sizeof(v37));
                sub_272B522C4(v37);
                return;
              }
            }
          }
        }
      }
    }

    *v37 = MEMORY[0x277D84C58];
    v12 = &qword_2808A3160;
    v13 = &unk_272B87CC0;
    goto LABEL_52;
  }
}

uint64_t WK2_HourMarineConditions.primarySwell.getter()
{
  result = OUTLINED_FUNCTION_280();
  if (v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v3 + v5) < 7u)
  {
    v8 = 0;
LABEL_6:
    v6 = __OFADD__(v8, v4);
    v9 = v8 + v4;
    if (!v6)
    {
      if (!__OFADD__(v9, *(v3 + v9)))
      {
        return OUTLINED_FUNCTION_56(result, v2, *(v0 + 8));
      }

      goto LABEL_11;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = __OFADD__(v5, 6);
  v7 = v5 + 6;
  if (!v6)
  {
    v8 = *(v3 + v7);
    goto LABEL_6;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_272B66A0C(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  v3 = v2;
  if (!v2)
  {
    v4 = __src[2];
    if (__src[2] >= 5)
    {
      v5 = __src[1] + 4;
      v6 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v5) & 1) != 0)
      {
        goto LABEL_24;
      }

      Verifier.rangeInBuffer(position:size:)(__src[1] + 4, 2);
      v3 = v7;
      if (v7)
      {
        goto LABEL_29;
      }

      v8 = *(__src[8] + 24);
      v9 = *(v8 + v5);
      if (*(v8 + v5))
      {
        v5 = __src[0] + v9;
        if (((v8 + LOBYTE(__src[0]) + v9) & 3) != 0)
        {
          v10 = v6;
        }

        else
        {
          v10 = 0;
        }

        if (v10 == 1)
        {
          *v26 = MEMORY[0x277D84CC0];
          v11 = &qword_2808A3170;
          v12 = &unk_272B89910;
LABEL_25:
          __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
          v19 = sub_272B87730();
          v21 = v20;
          sub_272B5C86C();
          swift_allocError();
          *v22 = v5;
          *(v22 + 8) = v19;
          *(v22 + 16) = v21;
          v23 = *&v26[32];
          v24 = *&v26[16];
          *(v22 + 24) = *v26;
          *(v22 + 40) = v24;
          *(v22 + 56) = v23;
          *(v22 + 64) = 0;
          swift_willThrow();
          goto LABEL_29;
        }

        Verifier.rangeInBuffer(position:size:)(__src[0] + v9, 4);
        v3 = v13;
        if (v13)
        {
          goto LABEL_29;
        }
      }
    }

    sub_272B544C8(6, 0x537972616D697270, 0xEC0000006C6C6577, 1, sub_272B69608);
    if (v3)
    {
      goto LABEL_29;
    }

    if (v4 < 9)
    {
      goto LABEL_27;
    }

    v5 = __src[1] + 8;
    v14 = LOBYTE(__src[3]);
    if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v5) & 1) == 0)
    {
      Verifier.rangeInBuffer(position:size:)(__src[1] + 8, 2);
      if (!v15)
      {
        v16 = *(__src[8] + 24);
        v17 = *(v16 + v5);
        if (*(v16 + v5))
        {
          v5 = __src[0] + v17;
          if (((v16 + LOBYTE(__src[0]) + v17) & 3) != 0)
          {
            v18 = v14;
          }

          else
          {
            v18 = 0;
          }

          if (v18 == 1)
          {
            *v26 = MEMORY[0x277D83A90];
            v11 = &unk_2808A3178;
            v12 = &unk_272B87CD0;
            goto LABEL_25;
          }

          Verifier.rangeInBuffer(position:size:)(__src[0] + v17, 4);
          if (v25)
          {
            goto LABEL_29;
          }
        }

LABEL_27:
        if (__OFSUB__(__src[7], 1))
        {
          __break(1u);
          return;
        }

        --__src[7];
      }

LABEL_29:
      memcpy(v26, __src, sizeof(v26));
      sub_272B522C4(v26);
      return;
    }

LABEL_24:
    *v26 = MEMORY[0x277D84C58];
    v11 = &qword_2808A3160;
    v12 = &unk_272B87CC0;
    goto LABEL_25;
  }
}

void static WK2_TideEvent.createTideEvent(_:date:height:eventType:)()
{
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_128();
  v3 = *v2;
  static WK2_Pollutant.startPollutant(_:)();
  OUTLINED_FUNCTION_127();
  static WK2_DayWeatherConditions.add(forecastStart:_:)();
  OUTLINED_FUNCTION_139();
  static WK2_HourTide.add(height:_:)();
  OUTLINED_FUNCTION_223();
  static WK2_Pollutant.add(units:_:)();
  *v0 = FlatBufferBuilder.endTable(at:)(v1);
  OUTLINED_FUNCTION_281();
}

void sub_272B66F18(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    v3 = __src[2];
    if (__src[2] < 5)
    {
      goto LABEL_30;
    }

    v4 = __src[1] + 4;
    v5 = LOBYTE(__src[3]);
    if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
    {
      Verifier.rangeInBuffer(position:size:)(__src[1] + 4, 2);
      if (v6)
      {
        goto LABEL_34;
      }

      v7 = *(__src[8] + 24);
      v8 = *(v7 + v4);
      if (*(v7 + v4))
      {
        v4 = __src[0] + v8;
        if (((v7 + LOBYTE(__src[0]) + v8) & 3) != 0)
        {
          v9 = v5;
        }

        else
        {
          v9 = 0;
        }

        if (v9 == 1)
        {
          *v27 = MEMORY[0x277D84CC0];
          v10 = &qword_2808A3170;
          v11 = &unk_272B89910;
LABEL_33:
          __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
          v21 = sub_272B87730();
          v23 = v22;
          sub_272B5C86C();
          swift_allocError();
          *v24 = v4;
          *(v24 + 8) = v21;
          *(v24 + 16) = v23;
          v25 = *&v27[32];
          v26 = *&v27[16];
          *(v24 + 24) = *v27;
          *(v24 + 40) = v26;
          *(v24 + 56) = v25;
          *(v24 + 64) = 0;
          swift_willThrow();
          goto LABEL_34;
        }

        Verifier.rangeInBuffer(position:size:)(__src[0] + v8, 4);
        if (v12)
        {
          goto LABEL_34;
        }
      }

      if (v3 <= 6)
      {
        goto LABEL_30;
      }

      v4 = __src[1] + 6;
      v13 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v4) & 1) != 0)
      {
        goto LABEL_32;
      }

      Verifier.rangeInBuffer(position:size:)(__src[1] + 6, 2);
      if (v14)
      {
        goto LABEL_34;
      }

      v15 = *(__src[8] + 24);
      v16 = *(v15 + v4);
      if (*(v15 + v4))
      {
        v4 = __src[0] + v16;
        if (((v15 + LOBYTE(__src[0]) + v16) & 3) != 0)
        {
          v17 = v13;
        }

        else
        {
          v17 = 0;
        }

        if (v17 == 1)
        {
          *v27 = MEMORY[0x277D83A90];
          v10 = &unk_2808A3178;
          v11 = &unk_272B87CD0;
          goto LABEL_33;
        }

        Verifier.rangeInBuffer(position:size:)(__src[0] + v16, 4);
        if (v18)
        {
LABEL_34:
          memcpy(v27, __src, sizeof(v27));
          sub_272B522C4(v27);
          return;
        }
      }

      if (v3 <= 8)
      {
        goto LABEL_30;
      }

      v4 = __src[1] + 8;
      if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
      {
        Verifier.rangeInBuffer(position:size:)(__src[1] + 8, 2);
        if (v19)
        {
          goto LABEL_34;
        }

        if (*(*(__src[8] + 24) + v4))
        {
          Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v4), 1);
          if (v20)
          {
            goto LABEL_34;
          }
        }

LABEL_30:
        if (__OFSUB__(__src[7], 1))
        {
          __break(1u);
          return;
        }

        --__src[7];
        goto LABEL_34;
      }
    }

LABEL_32:
    *v27 = MEMORY[0x277D84C58];
    v10 = &qword_2808A3160;
    v11 = &unk_272B87CC0;
    goto LABEL_33;
  }
}

uint64_t static WK2_HourTide.createHourTide(_:date:height:)()
{
  OUTLINED_FUNCTION_128();
  static WK2_HourTide.startHourTide(_:)(v2);
  OUTLINED_FUNCTION_127();
  static WK2_DayWeatherConditions.add(forecastStart:_:)();
  OUTLINED_FUNCTION_139();
  static WK2_HourTide.add(height:_:)();
  result = FlatBufferBuilder.endTable(at:)(v1);
  *v0 = result;
  return result;
}

void WK2_DayPartForecast.hasPrecipitationAmountByType.getter()
{
  OUTLINED_FUNCTION_181();
  if (v2)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v1) < 0x1Bu)
    {
      OUTLINED_FUNCTION_32_0();
      return;
    }

    v2 = __OFADD__(v1, 26);
    v3 = v1 + 26;
    if (!v2)
    {
      v4 = *(v0 + v3) != 0;
      return;
    }
  }

  __break(1u);
}

void WK2_DayPartForecast.precipitationAmountByType(at:)()
{
  OUTLINED_FUNCTION_10();
  if (v1)
  {
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_137(v0);
  if (v5 < 0x1B)
  {
LABEL_13:
    v13 = OUTLINED_FUNCTION_107();
    goto LABEL_14;
  }

  v1 = __OFADD__(v4, 26);
  v6 = v4 + 26;
  if (v1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    goto LABEL_13;
  }

  if (__OFADD__(v7, v3))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_136(v2);
  if (v1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (__OFADD__(v8, 4))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_36_0();
  if (!v12)
  {
    goto LABEL_20;
  }

  if (__OFADD__(v11, 4 * v10))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_108(v9);
  if (!v1)
  {
    v13 = OUTLINED_FUNCTION_183();
    v14 = v15;
LABEL_14:
    OUTLINED_FUNCTION_51(v13, v14);
    return;
  }

LABEL_22:
  __break(1u);
}

void sub_272B67768()
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_97();
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_23:
      v20 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_225();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v0 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v0 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v2, v13);
    v11 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_48(v15);
      *(v17 + 4) = 36;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0x24)
    {
      LOWORD(v19) = 36;
    }

    *(v18 + 64) = v19;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_DayPartForecast.add(uvIndexMin:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_106();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_125();
  if (v3)
  {
    OUTLINED_FUNCTION_79();
    if (!v3)
    {
LABEL_23:
      v17 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v4 ^ v5 | v3)
  {
    OUTLINED_FUNCTION_50();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v6))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_44();
  if (v4 != v5)
  {
    v7 = OUTLINED_FUNCTION_98();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v6, v8);
  }

  OUTLINED_FUNCTION_29();
  if (v4 ^ v5 | v3)
  {
    v10 = OUTLINED_FUNCTION_99();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v6, v11);
    v9 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_8(v9);
  if (v3)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v13 & 1) == 0)
  {
    if (*(v12 + 32))
    {
      OUTLINED_FUNCTION_41(v12);
      *(v14 + 4) = 54;
    }

    OUTLINED_FUNCTION_33(v12, *(v12 + 72), xmmword_272B87CB0);
    if (v16 <= 0x36)
    {
      LOWORD(v16) = 54;
    }

    *(v15 + 64) = v16;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_DayPartForecast.add(uvIndexMax:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_106();
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_125();
  if (v3)
  {
    OUTLINED_FUNCTION_79();
    if (!v3)
    {
LABEL_23:
      v17 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v4 ^ v5 | v3)
  {
    OUTLINED_FUNCTION_50();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v6))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_44();
  if (v4 != v5)
  {
    v7 = OUTLINED_FUNCTION_98();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v6, v8);
  }

  OUTLINED_FUNCTION_29();
  if (v4 ^ v5 | v3)
  {
    v10 = OUTLINED_FUNCTION_99();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v6, v11);
    v9 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_8(v9);
  if (v3)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v13 & 1) == 0)
  {
    if (*(v12 + 32))
    {
      OUTLINED_FUNCTION_41(v12);
      *(v14 + 4) = 56;
    }

    OUTLINED_FUNCTION_33(v12, *(v12 + 72), xmmword_272B87CB0);
    if (v16 <= 0x38)
    {
      LOWORD(v16) = 56;
    }

    *(v15 + 64) = v16;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_DayPartForecast.add(daylight:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_106();
  v19 = *MEMORY[0x277D85DE8];
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_22:
      v18 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_50();
  }

  v7 = *(v0 + 16);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v7))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_44();
  if (v5 != v6)
  {
    v8 = OUTLINED_FUNCTION_98();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v8, v7, v9);
  }

  OUTLINED_FUNCTION_29();
  if (v5 ^ v6 | v4)
  {
    v11 = OUTLINED_FUNCTION_99();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v7, v12);
    v10 = *(v1 + 32);
  }

  *(*(v1 + 24) + v10 + ~v7) = v2 & 1;
  OUTLINED_FUNCTION_60();
  if (v4)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v14 & 1) == 0)
  {
    if (*(v13 + 32))
    {
      OUTLINED_FUNCTION_41(v13);
      *(v15 + 4) = 62;
    }

    OUTLINED_FUNCTION_33(v13, *(v13 + 72), xmmword_272B87CB0);
    if (v17 <= 0x3E)
    {
      LOWORD(v17) = 62;
    }

    *(v16 + 64) = v17;
    goto LABEL_22;
  }

  __break(1u);
}

uint64_t static WK2_DayPartForecast.createDayPartForecast(_:forecastStart:forecastEnd:cloudCover:cloudCoverLowAltPct:cloudCoverMidAltPct:cloudCoverHighAltPct:conditionCode:humidity:humidityMax:humidityMin:precipitationAmount:precipitationAmountByTypeVectorOffset:precipitationChance:precipitationType:snowfallAmount:temperatureMax:temperatureMin:visibilityMax:visibilityMin:windDirection:windGustSpeedMax:windSpeed:windSpeedMax:precipitationIntensityMax:perceivedPrecipitationIntensityMax:uvIndexMin:uvIndexMax:temperatureApparentMin:temperatureApparentMax:daylight:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int *a10, uint64_t a11, unsigned __int8 *a12)
{
  OUTLINED_FUNCTION_210();
  v21 = v12;
  v14 = *v13;
  v15 = *a10;
  v19 = *a12;
  static WK2_DayPartForecast.startDayPartForecast(_:)(v16);
  at = v17;
  static WK2_DayWeatherConditions.add(forecastStart:_:)();
  static WK2_CurrentWeather.add(asOf:_:)();
  static WK2_CurrentWeather.add(cloudCover:_:)();
  OUTLINED_FUNCTION_249();
  static WK2_CurrentWeather.add(cloudCoverLowAltPct:_:)();
  static WK2_CurrentWeather.add(cloudCoverMidAltPct:_:)();
  static WK2_CurrentWeather.add(cloudCoverHighAltPct:_:)();
  static WK2_CurrentWeather.add(conditionCode:_:)();
  OUTLINED_FUNCTION_264();
  static WK2_HourWeatherConditions.add(humidity:_:)();
  OUTLINED_FUNCTION_263();
  static WK2_CurrentWeather.add(humidity:_:)();
  OUTLINED_FUNCTION_154();
  static WK2_DayPartForecast.add(humidityMin:_:)();
  OUTLINED_FUNCTION_262();
  static WK2_CurrentWeather.add(precipitationAmount1h:_:)();
  static WK2_Weather.add(tideEvents:_:)();
  static WK2_DayPartForecast.add(precipitationChance:_:)();
  static WK2_DayPartForecast.add(precipitationType:_:)();
  OUTLINED_FUNCTION_234();
  static WK2_CurrentWeather.add(precipitationAmountNext6h:_:)();
  OUTLINED_FUNCTION_233();
  static WK2_CurrentWeather.add(precipitationAmountNext24h:_:)();
  OUTLINED_FUNCTION_178();
  static WK2_HourWeatherConditions.add(snowfallAmount:_:)();
  OUTLINED_FUNCTION_139();
  static WK2_HourWeatherConditions.add(temperature:_:)();
  OUTLINED_FUNCTION_255();
  static WK2_HourWeatherConditions.add(temperatureApparent:_:)();
  static WK2_DayPartForecast.add(windDirection:_:)();
  static WK2_HourWeatherConditions.add(temperatureDewPoint:_:)();
  static WK2_DayPartForecast.add(windSpeed:_:)();
  OUTLINED_FUNCTION_257();
  static WK2_CurrentWeather.add(precipitationIntensity:_:)();
  OUTLINED_FUNCTION_251();
  static WK2_CurrentWeather.add(pressure:_:)();
  static WK2_DayWeatherConditions.add(temperatureMax:_:)();
  static WK2_DayPartForecast.add(uvIndexMin:_:)();
  static WK2_DayPartForecast.add(uvIndexMax:_:)();
  static WK2_CurrentWeather.add(snowfallAmount24h:_:)();
  static WK2_CurrentWeather.add(snowfallAmountNext1h:_:)();
  static WK2_DayPartForecast.add(daylight:_:)();
  result = FlatBufferBuilder.endTable(at:)(at);
  *v21 = result;
  return result;
}

void WK2_PrecipitationConditionParameter.type.getter()
{
  OUTLINED_FUNCTION_194();
  if (v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(v1 + v3) < 5u)
  {
LABEL_7:
    OUTLINED_FUNCTION_89(v0);
    return;
  }

  v4 = __OFADD__(v3, 4);
  v5 = v3 + 4;
  if (v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(v1 + v5);
  if (!v6)
  {
    goto LABEL_7;
  }

  v4 = __OFADD__(v6, v2);
  v7 = v6 + v2;
  if (!v4)
  {
    v8 = *(v1 + v7);
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

void static WK2_PrecipitationConditionParameter.add(type:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_140(v5);
  if ((v1 & 1) == 0)
  {
    OUTLINED_FUNCTION_79();
    if (!v6)
    {
LABEL_22:
      v21 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v7 ^ v8 | v6)
  {
    OUTLINED_FUNCTION_50();
  }

  v9 = *(v3 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v9))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_39();
  if (v7 != v8)
  {
    v10 = OUTLINED_FUNCTION_98();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v9, v11);
  }

  OUTLINED_FUNCTION_40();
  if (v7 ^ v8 | v6)
  {
    v13 = OUTLINED_FUNCTION_99();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v9, v14);
    v12 = *(v0 + 32);
  }

  OUTLINED_FUNCTION_12(v12);
  if (v6)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_41(v15);
      OUTLINED_FUNCTION_216();
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_206();
    if (!(!v6 & v20))
    {
      v18 = v19;
    }

    *(v17 + 64) = v18;
    goto LABEL_22;
  }

  __break(1u);
}

void static WK2_PrecipitationConditionParameter.createPrecipitationConditionParameter(_:type:date:)()
{
  OUTLINED_FUNCTION_219();
  v1 = v0;
  v3 = *v2;
  static WK2_HourTide.startHourTide(_:)(v4);
  v6 = v5;
  OUTLINED_FUNCTION_223();
  static WK2_PrecipitationConditionParameter.add(type:_:)();
  OUTLINED_FUNCTION_154();
  static WK2_CurrentWeather.add(asOf:_:)();
  *v1 = FlatBufferBuilder.endTable(at:)(v6);
  OUTLINED_FUNCTION_218();
}

void sub_272B68614(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    v3 = __src[2];
    if (__src[2] < 5)
    {
      goto LABEL_21;
    }

    v4 = __src[1] + 4;
    if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
    {
      Verifier.rangeInBuffer(position:size:)(__src[1] + 4, 2);
      if (v5)
      {
        goto LABEL_23;
      }

      if (*(*(__src[8] + 24) + v4))
      {
        Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v4), 1);
        if (v6)
        {
          goto LABEL_23;
        }
      }

      if (v3 < 7)
      {
        goto LABEL_21;
      }

      v4 = __src[1] + 6;
      v7 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
      {
        Verifier.rangeInBuffer(position:size:)(__src[1] + 6, 2);
        if (v8)
        {
LABEL_23:
          memcpy(v21, __src, sizeof(v21));
          sub_272B522C4(v21);
          return;
        }

        v9 = *(__src[8] + 24);
        v10 = *(v9 + v4);
        if (*(v9 + v4))
        {
          v4 = __src[0] + v10;
          if (((v9 + LOBYTE(__src[0]) + v10) & 3) != 0)
          {
            v11 = v7;
          }

          else
          {
            v11 = 0;
          }

          if (v11 == 1)
          {
            *v21 = MEMORY[0x277D84CC0];
            v12 = &qword_2808A3170;
            v13 = &unk_272B89910;
LABEL_19:
            __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
            v14 = sub_272B87730();
            v16 = v15;
            sub_272B5C86C();
            swift_allocError();
            *v17 = v4;
            *(v17 + 8) = v14;
            *(v17 + 16) = v16;
            v18 = *&v21[32];
            v19 = *&v21[16];
            *(v17 + 24) = *v21;
            *(v17 + 40) = v19;
            *(v17 + 56) = v18;
            *(v17 + 64) = 0;
            swift_willThrow();
            goto LABEL_23;
          }

          Verifier.rangeInBuffer(position:size:)(__src[0] + v10, 4);
          if (v20)
          {
            goto LABEL_23;
          }
        }

LABEL_21:
        if (__OFSUB__(__src[7], 1))
        {
          __break(1u);
          return;
        }

        --__src[7];
        goto LABEL_23;
      }
    }

    *v21 = MEMORY[0x277D84C58];
    v12 = &qword_2808A3160;
    v13 = &unk_272B87CC0;
    goto LABEL_19;
  }
}

void static WK2_PrecipitationConditionParameter.verify<A>(_:at:of:)(int a1, unint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_92(a1, a2, a3, a4, a5, a6, a7, a8, v73, *(&v73 + 1), v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  if (!v8)
  {
    OUTLINED_FUNCTION_168();
    if (v10 == v11)
    {
      OUTLINED_FUNCTION_70();
      if (v20)
      {
        OUTLINED_FUNCTION_42(v12, v13, v14, v15, v16, v17, v18, v19, v73, *(&v73 + 1), v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
        if (v21)
        {
          goto LABEL_18;
        }
      }

      OUTLINED_FUNCTION_61(v12, v13, v14, v15, v16, v17, v18, v19, v73, *(&v73 + 1), v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
      OUTLINED_FUNCTION_34_0(v22, v23, v24, v25, v26, v27, v28, v29, v73, *(&v73 + 1), v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
      if (v30)
      {
        v31 = OUTLINED_FUNCTION_46(v30, v73, *(&v73 + 1), v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
        OUTLINED_FUNCTION_174(v31);
      }

      if (v9 <= 6)
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_130();
      OUTLINED_FUNCTION_179();
      if (v20)
      {
        OUTLINED_FUNCTION_42(v32, v33, v34, v35, v36, v37, v38, v39, v73, *(&v73 + 1), v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
        if (v40)
        {
LABEL_18:
          *&v73 = MEMORY[0x277D84C58];
          v51 = &qword_2808A3160;
          v52 = &unk_272B87CC0;
          goto LABEL_19;
        }
      }

      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_53(v41, v42, v43, v44, v45, v46, v47, v48, v73, *(&v73 + 1), v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
      if (v49)
      {
        OUTLINED_FUNCTION_23();
        if (v20)
        {
          v50 = 0;
        }

        else
        {
          v50 = v9;
        }

        if (v50 == 1)
        {
          *&v73 = MEMORY[0x277D84CC0];
          v51 = &qword_2808A3170;
          v52 = &unk_272B89910;
LABEL_19:
          __swift_instantiateConcreteTypeFromMangledNameV2(v51, v52);
          OUTLINED_FUNCTION_195();
          OUTLINED_FUNCTION_185();
          v53 = OUTLINED_FUNCTION_177();
          OUTLINED_FUNCTION_113(v53, v54);
          OUTLINED_FUNCTION_9_0(v55, v56, v57, v58, v59, v60, v61, v62, v73, v63, v74);
          v64 = swift_willThrow();
LABEL_23:
          OUTLINED_FUNCTION_93(v64, v65, v66, v67, v68, v69, v70, v71, v73, *(&v73 + 1), v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
          sub_272B522C4(&v73);
          return;
        }

        OUTLINED_FUNCTION_66();
      }
    }

LABEL_21:
    OUTLINED_FUNCTION_109();
    if (v11)
    {
      __break(1u);
      return;
    }

    v92 = v72;
    goto LABEL_23;
  }
}

void WK2_Article.id.getter()
{
  OUTLINED_FUNCTION_65();
  if (v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(v0 + 8);
  v6 = *(v0 + 16);
  if (*(v2 + v3) < 5u)
  {
    v8 = 0;
LABEL_6:
    if (!__OFADD__(v8, v1))
    {
      Table.directString(at:)(v8 + v1);
      return;
    }

    goto LABEL_9;
  }

  v4 = __OFADD__(v3, 4);
  v7 = v3 + 4;
  if (!v4)
  {
    v8 = *(v2 + v7);
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
}

void sub_272B68A18()
{
  OUTLINED_FUNCTION_181();
  if (v2)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v1) < 7u)
    {
      OUTLINED_FUNCTION_32_0();
      return;
    }

    v2 = __OFADD__(v1, 6);
    v3 = v1 + 6;
    if (!v2)
    {
      v4 = *(v0 + v3) != 0;
      return;
    }
  }

  __break(1u);
}

Swift::String_optional __swiftcall WK2_Article.supportedStorefronts(at:)(Swift::Int32 at)
{
  OUTLINED_FUNCTION_65();
  if (v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*(v5 + v6) < 7u)
  {
LABEL_12:
    countAndFlagsBits = OUTLINED_FUNCTION_169();
    goto LABEL_21;
  }

  v7 = __OFADD__(v6, 6);
  v8 = v6 + 6;
  if (v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = *(v5 + v8);
  if (!v9)
  {
    goto LABEL_12;
  }

  v7 = __OFADD__(v9, v4);
  v10 = v9 + v4;
  if (v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = *(v5 + v10);
  v7 = __OFADD__(v10, v11);
  v12 = v10 + v11;
  if (v7)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (__OFADD__(v12, 4))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_248();
  if (!v14)
  {
    goto LABEL_19;
  }

  v7 = __OFADD__(v13, 4 * countAndFlagsBits);
  countAndFlagsBits = (v13 + 4 * countAndFlagsBits);
  if (v7)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v15 = *(v1 + 8);
  v16 = *(v1 + 16);
  v17 = Table.directString(at:)(countAndFlagsBits);
  object = v17.value._object;
  countAndFlagsBits = v17.value._countAndFlagsBits;
LABEL_21:
  result.value._object = object;
  result.value._countAndFlagsBits = countAndFlagsBits;
  return result;
}

void sub_272B68AF4()
{
  OUTLINED_FUNCTION_181();
  if (v2)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v1) < 9u)
    {
      OUTLINED_FUNCTION_32_0();
      return;
    }

    v2 = __OFADD__(v1, 8);
    v3 = v1 + 8;
    if (!v2)
    {
      v4 = *(v0 + v3) != 0;
      return;
    }
  }

  __break(1u);
}

void sub_272B68B44()
{
  OUTLINED_FUNCTION_10();
  if (v1)
  {
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_137(v0);
  if (v5 < 9)
  {
LABEL_13:
    v13 = OUTLINED_FUNCTION_107();
    goto LABEL_14;
  }

  v1 = __OFADD__(v4, 8);
  v6 = v4 + 8;
  if (v1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    goto LABEL_13;
  }

  if (__OFADD__(v7, v3))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_136(v2);
  if (v1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (__OFADD__(v8, 4))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_36_0();
  if (!v12)
  {
    goto LABEL_20;
  }

  if (__OFADD__(v11, 4 * v10))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_108(v9);
  if (!v1)
  {
    v13 = OUTLINED_FUNCTION_183();
    v14 = v15;
LABEL_14:
    OUTLINED_FUNCTION_51(v13, v14);
    return;
  }

LABEL_22:
  __break(1u);
}

void _s11WeatherData04WK2_A7ChangesV03hasD0Sbvg_0()
{
  OUTLINED_FUNCTION_181();
  if (v2)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v1) < 0xBu)
    {
      OUTLINED_FUNCTION_32_0();
      return;
    }

    v2 = __OFADD__(v1, 10);
    v3 = v1 + 10;
    if (!v2)
    {
      v4 = *(v0 + v3) != 0;
      return;
    }
  }

  __break(1u);
}

Swift::String_optional __swiftcall WK2_Article.phenomena(at:)(Swift::Int32 at)
{
  OUTLINED_FUNCTION_65();
  if (v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*(v5 + v6) < 0xBu)
  {
LABEL_12:
    countAndFlagsBits = OUTLINED_FUNCTION_169();
    goto LABEL_21;
  }

  v7 = __OFADD__(v6, 10);
  v8 = v6 + 10;
  if (v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = *(v5 + v8);
  if (!v9)
  {
    goto LABEL_12;
  }

  v7 = __OFADD__(v9, v4);
  v10 = v9 + v4;
  if (v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = *(v5 + v10);
  v7 = __OFADD__(v10, v11);
  v12 = v10 + v11;
  if (v7)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (__OFADD__(v12, 4))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_248();
  if (!v14)
  {
    goto LABEL_19;
  }

  v7 = __OFADD__(v13, 4 * countAndFlagsBits);
  countAndFlagsBits = (v13 + 4 * countAndFlagsBits);
  if (v7)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v15 = *(v1 + 8);
  v16 = *(v1 + 16);
  v17 = Table.directString(at:)(countAndFlagsBits);
  object = v17.value._object;
  countAndFlagsBits = v17.value._countAndFlagsBits;
LABEL_21:
  result.value._object = object;
  result.value._countAndFlagsBits = countAndFlagsBits;
  return result;
}